function getIP{
    $IP = (Get-NetIPAddress).IPv4Address | Select-String "192*"
}