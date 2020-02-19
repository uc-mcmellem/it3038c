var path = require("path")

var hello = "hello from Node JS Variable!"
console.log(hello)

console.log(`Printing variable hello: ${hello}`)

console.log("directory name: " + __dirname)
console.log("directory and filename: " + __filename)
console.log("Using PATH module")
console.log(`Hello from file ${path.basename(__filename)}`)

console.log(`Process args: ${process.argv}`)
