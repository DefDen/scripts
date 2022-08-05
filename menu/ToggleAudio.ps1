$device1 = "Speakers"
$device2 = "6 - EI342CKR"

$Audio = Get-AudioDevice -playback
Write-Output "Audio device was " $Audio.Name
Write-Output "Audio device now set to " 

if ($Audio.Name.StartsWith($device1)) {
   (Get-AudioDevice -list | Where-Object Name -like ("$device2*") | Set-AudioDevice).Name
}  Else {
   (Get-AudioDevice -list | Where-Object Name -like ("$device1*") | Set-AudioDevice).Name
}