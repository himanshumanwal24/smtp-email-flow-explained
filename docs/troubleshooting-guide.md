# SMTP Troubleshooting Guide

## 📌 Purpose
This guide provides a structured approach to diagnosing and resolving email delivery issues in systems that use SMTP (Simple Mail Transfer Protocol).

---

## 🔍 Troubleshooting Methodology

Always troubleshoot in this order:

Application → SMTP Server → Network → DNS → Recipient

---

## 🧩 Step-by-Step Troubleshooting

### 1. Verify Email Trigger (Application Layer)
- Confirm that the email event was triggered
- Check application logs for errors
- Verify sender email address configuration

---

### 2. Validate SMTP Configuration
Check the following:
- SMTP server address (e.g., smtp.domain.com)
- Port (25, 465, 587)
- Authentication credentials
- Encryption (TLS/SSL if required)

---

### 3. Check SMTP Server Status
- Ensure SMTP service is running
- Verify SMTP server is reachable
- Review SMTP logs for errors
- Confirm relay permissions

---

### 4. Test Network Connectivity
- Check if SMTP port is open
- Verify firewall rules
- Confirm outbound traffic is allowed

Command:
Test-NetConnection smtp.domain.com -Port 587

---

### 5. Validate DNS / MX Records
- Confirm recipient domain MX records
- Ensure DNS resolution is working

Command:
nslookup -type=mx domain.com

---

### 6. Check Recipient Mail Server
- Verify recipient email address
- Check spam/junk folder
- Check quarantine or security filters
- Validate distribution list permissions

---

## ❌ Common Issues and Resolutions

### SMTP Authentication Failure
Cause: Incorrect username/password  
Resolution: Update credentials  

---

### Relay Denied
Cause: Sender not authorized  
Resolution: Update relay permissions  

---

### Emails Not Delivered to External Users
Cause: Firewall or mail flow restrictions  
Resolution: Allow outbound SMTP traffic  

---

### Email Marked as Spam
Cause: Missing SPF/DKIM/DMARC  
Resolution: Configure email authentication  

---

### Email Delay
Cause: SMTP queue backlog  
Resolution: Check queue and server load  

---

### Invalid Recipient Address
Cause: Incorrect email  
Resolution: Correct the email address  

---

## 🛠 Troubleshooting Checklist

### Application Level
- Email triggered successfully
- No application errors

### SMTP Level
- Server reachable
- Authentication successful
- Relay permissions correct

### Network Level
- Firewall allows SMTP
- Port open

### DNS Level
- MX records correct

### Recipient Level
- Email valid
- Not blocked

---

## 📚 Key Takeaways
- Issues can occur at multiple layers
- Logs are critical for troubleshooting
- Always follow structured troubleshooting
- Network and firewall issues are common
