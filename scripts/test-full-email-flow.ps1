# Full SMTP Email Flow Troubleshooting Script
# Runs sender, SMTP, domain, and recipient-side checks together

Write-Host "===== Full SMTP Email Flow Troubleshooting =====" -ForegroundColor Cyan

$smtpServer = "smtp.domain.com"
$smtpPort = 587
$recipientEmail = "user@domain.com"
$recipientDomain = $recipientEmail.Split("@")[1]

Write-Host "`n1. Sender Side: Internet Connectivity"
Test-Connection google.com -Count 2

Write-Host "`n2. Sender Side: DNS Settings"
Get-DnsClientServerAddress

Write-Host "`n3. SMTP Server: DNS Resolution"
Resolve-DnsName $smtpServer

Write-Host "`n4. SMTP Server: Port Connectivity"
Test-NetConnection $smtpServer -Port $smtpPort

Write-Host "`n5. Domain Side: MX Records"
Resolve-DnsName $recipientDomain -Type MX

Write-Host "`n6. Domain Side: SPF Record"
Resolve-DnsName $recipientDomain -Type TXT | Where-Object { $_.Strings -match "v=spf1" }

Write-Host "`n7. Domain Side: DMARC Record"
Resolve-DnsName "_dmarc.$recipientDomain" -Type TXT

Write-Host "`n8. Recipient Side Checks"
Write-Host "- Confirm recipient address: $recipientEmail"
Write-Host "- Ask recipient to check spam/junk/quarantine"
Write-Host "- Check distribution list restrictions if applicable"

Write-Host "`nTroubleshooting complete."
