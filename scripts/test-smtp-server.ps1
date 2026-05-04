# SMTP Server Troubleshooting Script
# Tests SMTP server DNS resolution and port connectivity

Write-Host "===== SMTP Server Troubleshooting =====" -ForegroundColor Cyan

$smtpServer = "smtp.domain.com"
$ports = @(25, 465, 587)

Write-Host "`n1. Resolving SMTP server name..."
Resolve-DnsName $smtpServer

Write-Host "`n2. Testing SMTP ports..."
foreach ($port in $ports) {
    Write-Host "`nTesting $smtpServer on port $port..."
    Test-NetConnection $smtpServer -Port $port
}

Write-Host "`nResult Guide:"
Write-Host "- Port 25 is commonly used for server-to-server SMTP."
Write-Host "- Port 465 is commonly used for SMTP over SSL."
Write-Host "- Port 587 is commonly used for authenticated SMTP submission."
Write-Host "- If all ports fail, SMTP server may be unreachable or blocked."
