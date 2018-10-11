@ECHO OFF
powershell.exe -noprofile -executionpolicy bypass -file C:\chronos\chronosPowerShellScript.ps1
newman run C:\chronos\chronos_special.json