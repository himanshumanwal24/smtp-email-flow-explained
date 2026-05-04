# Sender Side Email Troubleshooting Script
# Checks local network, DNS settings, and sender system readiness

Write-Host "===== Sender Side Troubleshooting =====" -ForegroundColor Cyan

Write-Host "`n1. Checking internet connectivity..."
Test-Connection google.com -Count 2

Write-Host "`n2. Checking local IP configuration..."
ipconfig /all

Write-Host "`n3. Checking DNS server settings..."
Get-DnsClientServerAddress

Write-Host "`n4. Checking default gateway..."
Get-NetRoute -DestinationPrefix "0.0.0.0/0"

Write-Host "`n5. Checking firewall profile status..."
Get-NetFirewallProfile | Select-Object Name, Enabled

Write-Host "`nResult Guide:"
Write-Host "- If internet test fails, sender network may be the issue."
Write-Host "- If DNS settings are missing, sender machine may not resolve mail servers."
Write-Host "- If firewall is enabled, confirm SMTP traffic is allowed."
