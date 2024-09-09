$Size = (Get-ChildItem $env:userprofile -Recurse | Measure-Object -Property Length -Sum).Sum
Write-Output ("Username: " + $env:USERNAME)
Write-Output ("Profile Location: " + $env:USERPROFILE)
Write-Output ("Profile size in: " + "{0:N2}" -f ($Size/1MB) + " MB")
Write-Output ("Profile size in: " + "{0:N2}" -f ($Size/1GB) + " GB")
