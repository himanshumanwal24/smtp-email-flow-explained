# Recipient Side Email Troubleshooting Script
# Helps identify receiver-side delivery issues

Write-Host "===== Recipient Side Troubleshooting =====" -ForegroundColor Cyan

$recipientEmail = "user@domain.com"
$recipientDomain = $recipientEmail.Split("@")[1]

Write-Host "`n1. Recipient email entered:"
Write-Host $recipientEmail

Write-Host "`n2. Extracted recipient domain:"
Write-Host $recipientDomain

Write-Host "`n3. Checking recipient domain MX records..."
Resolve-DnsName $recipientDomain -Type MX

Write-Host "`n4. Checking recipient domain TXT records..."
Resolve-DnsName $recipientDomain -Type TXT

Write-Host "`nResult Guide:"
Write-Host "- Confirm recipient email address is correct."
Write-Host "- Ask recipient to check spam, junk, and quarantine."
Write-Host "- If using a distribution list, confirm external senders are allowed."
Write-Host "- If MX records are valid, issue may be filtering or mailbox-side."
