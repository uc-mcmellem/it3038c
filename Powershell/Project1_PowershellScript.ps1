##The first line gets all of the files in the path specified (C:\Users\ in this case
Get-ChildItem -Path C:\Users\ -Recurse |
##The second line says only get the files that are greater than 200 MB
Where-Object {$_.length/1MB -gt 200} | 
##Then select the file name, size in MB, an full path and display them in a list
select name,@{n=”Size in MB”;e={$_.length/1MB}},fullname 