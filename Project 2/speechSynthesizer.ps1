Add-Type -AssemblyName system.speech
#Create the speech synthesizer
$speak = New-Object system.speech.synthesis.speechsynthesizer

#Ask the user what they want the synthesizer to say
$wordsToSpeak = (Read-Host "What would you like powershell to say?")

#Set volume so it doesn't hurt the persons ears or freak them out by being too loud
$speak.Volume = 100

#Speak the words 
$speak.Speak($wordsToSpeak)

#After the words are spoke, pause for 1.5 seconds and then give an outro and end the script
Start-Sleep -s 1.5
$speak.Speak("Thank you for using this speech synthensizer made by Ethan McMellan")