(Get-Content -Path .\VERSION.dat | Select-String MAJOR, MINOR, PATCH).GetType()
