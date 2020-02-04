$Hello = "Hello, Powershell"
function getIP{
    (Get-NetIPAddress).IPv4Address | Select-String "192*"
}
$IP = getIP

Write-Host($Hello)


write-host("The IP address of this machine is $IP")