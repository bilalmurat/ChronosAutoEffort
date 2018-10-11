$date = Get-Date;
$dateStr = $date.ToString("dd/MM/yyyy");

(Get-Content C:\chronos\chronos_general.json) | 
ForEach-Object { $_ -replace "{username}", "****username*****"; } | 
ForEach-Object { $_ -replace "{password}", "****password*****";  } | 
ForEach-Object { $_ -replace "{description}", "****description*****"; } | 
ForEach-Object { $_ -replace "{activityDate}", $dateStr; } | 
Set-Content C:\chronos\chronos_special.json