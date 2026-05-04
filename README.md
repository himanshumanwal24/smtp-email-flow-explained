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

```text
Application / System
        ↓
Email Triggered
        ↓
SMTP Server
        ↓
DNS / MX Record Lookup
        ↓
Recipient Mail Server
        ↓
Recipient Inbox
