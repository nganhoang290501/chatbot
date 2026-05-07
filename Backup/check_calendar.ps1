$start = (Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ssZ")
$end = (Get-Date).AddDays(1).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ssZ")
Write-Output "Start: $start"
Write-Output "End: $end"