# SMTP Troubleshooting Guide

## 📌 Purpose
This guide provides a structured approach to diagnosing and resolving email delivery issues using SMTP.

---

## 🔍 Troubleshooting Methodology

Always troubleshoot in this order:
Application → SMTP Server → Network → DNS → Recipient

---

## 🧩 Step-by-Step Troubleshooting

### 1. Verify Email Trigger (Application Layer)
- Confirm the email event was triggered
- Check application logs for errors
- Validate sender email configuration

---

### 2. Validate SMTP Configuration
Check the following:
- SMTP server address
- Port (25, 465, 587)
- Authentication credentials
- Encryption (TLS/SSL if required)

---

### 3. Check SMTP Server Status
- Ensure SMTP service is running
- Review SMTP logs
- Check for authentication failures
- Verify relay permissions

---

### 4. Test Network Connectivity
- Confirm SMTP port is reachable
- Check firewall rules
- Verify outbound traffic is allowed

Command:
```powershell
Test-NetConnection smtp.domain.com -Port 587
