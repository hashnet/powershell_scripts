Write-Host "This program will search for files in a given location and returns"
Write-Host "the full path of the files that contains the pattern string."
Write-Host ""
$path = Read-Host -Prompt "Provide the root folder for the search `r`n(Example: [C:\], [C:\Work])"
$pattern = Read-Host -Prompt "Provide the pattern for search string `r`n(Example: [integer], [int*r])"

Get-ChildItem -Path $path -Recurse -Force -ErrorAction SilentlyContinue | Select-String -pattern $pattern | group path | select name