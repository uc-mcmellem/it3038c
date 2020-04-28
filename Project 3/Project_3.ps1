Add-Type -AssemblyName system.speech
#Ask what the user would like to do
Write-Host "What would you like to do?"
Write-Host "1: Speak some words
2: List files in a directory
3: Calculator using 2 numbers"

$todo = Read-Host -Prompt "Please type 1, 2, or 3"

#Runs the first option
if($todo -eq '1') {
    #Create the speech synthesizer
    $speak = New-Object system.speech.synthesis.speechsynthesizer
    #Ask the user what they want the synthesizer to say
    $wordsToSpeak = (Read-Host "What would you like powershell to say?")
    #Set volume so it doesn't hurt the persons ears or freak them out by being too loud
    $speak.Volume = 100
    #Speak the words 
    $speak.Speak($wordsToSpeak)
}
#Runs the second option
if($todo -eq '2'){
    Write-Host "Thank you for choosing option 2, please wait while your list is compiled"
    Start-Sleep -s 1.5

    ##The first line gets all of the files in the path specified (C:\Users\ in this case)
    Get-ChildItem -Path C:\Users\ -Recurse |
    ##The second line says only get the files that are greater than 200 MB
    Where-Object {$_.length/1MB -gt 200}  |
    ##Then select the file name, size in MB, an full path and display them in a list
    Select-Object name,@{n="Size in MB";e={$_.length/1MB}},fullname |
    Sort-Object -Property "Size in MB" 
    
}
if($todo -eq '3'){
    ##Ask what numbers you would like to do math on
    [int]$a = Read-Host -Prompt "Input first number"
    [int]$b = Read-Host -Prompt "Input second number"
    $mathToBeDone = Read-Host -Prompt  "What artimetic would you like to do? (/-divide *-multipy +-add --subtract)"
    
    ##Do the math based on what the user answered
    if($mathToBeDone-eq "/"){
        $completedMath = $a / $b
        write-host "Your answer is"$completedmath
        break
    }
    
    if($mathToBeDone-eq "*"){
        $completedMath = $a * $b
        write-host "Your answer is"$completedmath
        break
    }
    
    if($mathToBeDone-eq "+"){
        $completedMath = $a + $b
        write-host "Your answer is"$completedmath
        break
    }
    
    if($mathToBeDone-eq "-"){
        $completedMath = $a - $b
        write-host "Your answer is"$completedmath
        break
    }
    #Throws an error is something wasn't quite right
    else {
        Write-Host "Something went wrong! :("
    }
}

