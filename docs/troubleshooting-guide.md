# SMTP Troubleshooting Guide

## 📌 Purpose
This document provides a structured approach to troubleshooting email delivery issues using SMTP.

---

## 🔍 Troubleshooting Approach

### Step 1: Verify Email Trigger
- Check if the application triggered the email
- Review application logs

### Step 2: Validate SMTP Configuration
- SMTP server address
- Port (25, 465, 587)
- Authentication credentials

---

## 🛠 Layer-wise Troubleshooting

### Application Layer
- Email trigger event
- Error logs
- Sender configuration

### SMTP Layer
- SMTP server reachable
- Authentication success/failure
- Relay permissions

### Network Layer
- Firewall rules
- Port accessibility
- DNS resolution

### DNS Layer
- Check MX records
- Validate domain routing

Command:
```bash
nslookup -type=mx domain.com
