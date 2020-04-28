var http = require("http")
var fs = require("fs")
var os = require("os")
var ip = require("ip")

function secondsToString(seconds){

    var numdays = Math.floor(seconds / 86400);
    var numhours = Math.floor((seconds % 86400) / 3600);
    var numminutes = Math.floor(((seconds % 86400) % 3600) / 60);
    var numseconds = ((seconds % 86400) % 3600) % 60;
    return numdays + " days " + numhours + " hours " + numminutes + " minutes " + numseconds + " seconds";

}

http.createServer(function(req, res){
    
    if(req.url === "/") {
        fs.readFile("./public/index.html", "UTF-8", function(err, body){
        res.writeHead(200, {"Content-Type": "text/html"})
        res.end(body)
        
    })
}
else if(req.url.match("/sysinfo")) {    
    myHostName = os.hostname();
    
    html = `
    <!DOCTYPE html>
    <html>
        <head>
            <title>Node JS Response</title>
        </head>
        <body>
            <p>Hostname: ${myHostName}</p>
            <p>IP: ${ip.address()}</p>
            <p>Server Uptime: ${secondsToString(os.uptime)}</p>
            <p>Total Memory: ${os.totalmem/1048576} MB</p>
            <p>Free Memory: ${os.freemem/1048576} MB</p>
            <p>Number of CPUs: ${os.cpus().length}</p>
        </body>
    </html>`
    res.writeHead(200, {"Content-Type": "text/html"})
    res.end(html)
}
else{
        res.writeHead(404, {"Content-Type": "text/plain"})
        res.end(`404 File not Found at ${req.url}`)
    }

}).listen(3000)

console.log("Server listening on port 3000")