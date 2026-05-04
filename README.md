# SMTP Email Flow Explained

## 📌 Project Overview
This project explains how an email is triggered, routed, delivered, and what common issues can occur during the SMTP email flow.

It is designed as a technical support documentation project to demonstrate troubleshooting, documentation, and root cause analysis skills.

---

## 📧 What is SMTP?
SMTP stands for Simple Mail Transfer Protocol. It is used to send emails from an application, system, or mail client to the recipient’s mail server.

---

## 🏢 Example Scenario
A system sends an email notification to a distribution list.

The distribution list may include:
- Internal company email addresses
- Customer-created distribution lists
- External customer email addresses

---

## ✅ Successful Email Flow

    [Application / System]
              ↓
       Email Triggered
              ↓
         [SMTP Server]
              ↓
      DNS / MX Lookup
              ↓
    [Recipient Mail Server]
              ↓
    [Inbox / Spam / Quarantine]

---

## 🔍 Step-by-Step Flow

### 1. Email is triggered
The application generates an email based on an event such as an alert, notification, or user action.

### 2. Application sends request to SMTP server
The application connects to the SMTP server using configured settings:
- SMTP server address  
- Port  
- Authentication credentials  

### 3. SMTP server validates the request
The SMTP server checks:
- Sender authentication  
- Relay permissions  
- Sender address validity  

### 4. DNS / MX lookup happens
The SMTP server performs a DNS lookup to find the recipient domain’s mail server.

### 5. Email is routed to recipient mail server
The email is sent to the recipient’s mail server.

### 6. Recipient server processes the email
The recipient server checks:
- Spam filters  
- Security policies  
- Sender reputation  

### 7. Email is delivered
The email is delivered to:
- Inbox  
- Spam/Junk  
- Quarantine  
- Or rejected
