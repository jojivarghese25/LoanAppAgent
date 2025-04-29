# Loan Application Management System — Agentforce Integration

This project demonstrates a complete **Loan Application Management** flow using **Agentforce**, built on top of **MuleSoft APIs**, **Salesforce**, and key third-party services such as **Experian**, **DocuSign**, and **IDP**.

## Overview

The solution automates the loan application lifecycle — from initial request to approval or rejection — by integrating conversational flows (Agentforce) with backend APIs and enterprise systems.

## Attached Applications

This repository or deployment includes the following MuleSoft API implementations:

| Application Name         | Purpose                                                              |
|--------------------------|----------------------------------------------------------------------|
| `ba-salesforce-sapi`     | Salesforce System API for Updating loanstatusobject records                 |
| `ba-salesforce-eapi`     | Salesforce Experience API to expose Salesforce functionalities       |
| `ba-docusign-sapi`       | Connects with DocuSign for digital consent and signature management  |
| `ba-experian-sapi`       | Integrates with Experian for credit score and eligibility checks     |
| `ba-idp-app`             | Intelligent Document Processing for identity/document verification   |
| `ba-loan-process-papi`   | Orchestrates the loan processing business logic                     |
| `ba-notification-sapi`   | Sends notifications to users (via email/SMS)                         |

## 🧠 Flow Summary

1. **Loan Request Initiation**
   - Customer starts loan request via Agentforce.
   - Agent bot collects initial details (name, DOB, email, loan type).

2. **Contact and Loan Record Creation**
   - `ba-salesforce-sapi` creates a new Contact and Loan Application record.

3. **Creditworthiness Check**
   - `ba-experian-sapi` checks customer's credit score.
   - If score is below the threshold, loan is rejected immediately.

4. **Consent & Document Verification**
   - `ba-docusign-sapi` sends digital consent form for signature.
   - `ba-idp-app` extracts and verifies ID documents.

5. **Final Processing**
   - `ba-loan-process-papi` coordinates the logic.
   - `ba-notification-sapi` sends status updates to the customer.

## Technologies Used

- **MuleSoft Anypoint Platform**
- **Salesforce**
- **Agentforce (Conversational UI)**
- **DocuSign API**
- **Experian API**
- **Custom IDP Logic (Mule Application)**


