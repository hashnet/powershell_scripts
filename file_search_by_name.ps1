Write-Host "This program will search for files in a given location and returns"
Write-Host "the full path of the files whose names match the given pattern."
Write-Host ""
$path = Read-Host -Prompt "Provide the root folder for the search `r`n(Example: [C:\], [C:\Work])"
$pattern = Read-Host -Prompt "Provide the pattern for file name `r`n(Example: [*.txt], [*.*], [someName.*], [someName.someExtension])"

Get-ChildItem -Path $path -Include $pattern -Recurse -Force -ErrorAction SilentlyContinue | %{$_.FullName}