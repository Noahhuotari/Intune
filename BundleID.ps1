#Use this to find Apple App store Bundle IDs

$id = 403226319

$Req = Invoke-WebRequest -Uri https://itunes.apple.com/lookup?id=$ID
$Req.tostring() -split "[`r`n,]" | select-string "bundleId" 
