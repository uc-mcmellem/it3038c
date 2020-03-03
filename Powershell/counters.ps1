$Machines = (hostname)
foreach ($machine in $machines) {
    $pt = (Get-Counter -Counter "\Processor(_Total)\% Processor Time" -SampleInterval 1 -MaxSamples 3).CounterSamples.Cookedvalue
    $sample = 1
    foreach($p in $pt) {
        $date = get-date -Format g
        "{3} - Sample {2}: CPU is at {0} on {1}" -f [int]$p, $machine, $sample, $date | Out-File -append C:\logs\cpu.log
        $sample++
    }
 ##   $RCounters = Get-Counter -ListSet * -ComputerName $machine
   ## Write-Host("There are {0} counters on {1}" -f $RCounters.count, ($machine))
}