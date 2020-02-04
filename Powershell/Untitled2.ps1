function getDate{
    (Get-Date -UFormat "%b %d, %Y")
}
function getIP{
    (Get-NetIPAddress).IPv4Address | Select-String "192*"
}
function PSVer{
    ($host).Version
}
$d = $currentdate.Day
$m = $currentdate.Month
$y = $currentdate.Year
$PSVer = PSVer
$IP = getIP
$currentdate = getDate
$BODY = "This machine's IP is $IP. User is $env:USERNAME. The version of Powershell is $psver. Today's date is $currentdate."
Send-MailMessage -To "botheaj@ucmail.uc.edu" -From "ethanmcmellan16@gmail.com" -Subject "IT3038C Windows Sysinfo" -Body $BODY -SmtpServer smtp.gmail.com -port 587 -UseSsl -Credential (Get-Credential)