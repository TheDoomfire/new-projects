$websiteUrl = "http://localhost:3000/"
$vscodeLocation = Join-Path $PSScriptRoot "frontend"

# Open the website in the default browser
Start-Process $websiteUrl

$processName = "Code.exe"
$processRunning = tasklist /FI "IMAGENAME eq $processName" 2>$null | Select-String -Pattern $processName

if ($processRunning) {
    Write-Host "Process is running."
}
else {
    Write-Host "Process is not running. Opening VS Code..."
    Start-Process code -ArgumentList $vscodeLocation
}

# Change current directory to vscodeLocation
Set-Location -Path $vscodeLocation

# Run "npm run dev"
npm run dev

# Exit the script
Exit
