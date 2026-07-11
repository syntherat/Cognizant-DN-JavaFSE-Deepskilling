# Hands-on: Creating Microservices for Account and Loan

## Overview

This project demonstrates the implementation of two independent Spring Boot microservices for a banking application.

The application is divided into two separate services:

- **Account Microservice** – Handles account-related operations.
- **Loan Microservice** – Handles loan-related operations.

Each microservice is developed as an independent Maven project with its own configuration and runs on a separate port.

---

## Objective

- Create independent Spring Boot microservices.
- Build RESTful APIs using Spring Web.
- Configure different server ports.
- Understand the concept of Microservices.
- Test REST APIs using a web browser or Postman.

---

## Technologies Used

- Java
- Spring Boot
- Spring Web
- Spring Boot DevTools
- Maven
- REST API

---

# Account Microservice

## Project Details

| Property | Value |
|----------|-------|
| Group | com.cognizant |
| Artifact | account |
| Port | 8080 |

### REST Endpoint

**Method**

```
GET
```

**URL**

```
http://localhost:8080/accounts/{number}
```

### Sample Request

```
http://localhost:8080/accounts/00987987973432
```

### Sample Response

```json
{
    "number": "00987987973432",
    "type": "savings",
    "balance": 234343
}
```

---

# Loan Microservice

## Project Details

| Property | Value |
|----------|-------|
| Group | com.cognizant |
| Artifact | loan |
| Port | 8081 |

### REST Endpoint

**Method**

```
GET
```

**URL**

```
http://localhost:8081/loans/{number}
```

### Sample Request

```
http://localhost:8081/loans/H00987987972342
```

### Sample Response

```json
{
    "number": "H00987987972342",
    "type": "car",
    "loan": 400000,
    "emi": 3258,
    "tenure": 18
}
```

---

## Project Structure

### Account Microservice

```text
account
│
├── README.md
├── pom.xml
│
├── src
│   ├── main
│   │
│   ├── java
│   │   └── com
│   │       └── cognizant
│   │           └── account
│   │               ├── AccountApplication.java
│   │               ├── controller
│   │               │      AccountController.java
│   │               └── model
│   │                      Account.java
│   │
│   └── resources
│       └── application.properties
```

---

### Loan Microservice

```text
loan
│
├── README.md
├── pom.xml
│
├── src
│   ├── main
│   │
│   ├── java
│   │   └── com
│   │       └── cognizant
│   │           └── loan
│   │               ├── LoanApplication.java
│   │               ├── controller
│   │               │      LoanController.java
│   │               └── model
│   │                      Loan.java
│   │
│   └── resources
│       └── application.properties
```

---

## Running the Applications

### Account Microservice

Run

```
AccountApplication.java
```

Application starts on

```
http://localhost:8080
```

---

### Loan Microservice

Update `application.properties`

```properties
server.port=8081
```

Run

```
LoanApplication.java
```

Application starts on

```
http://localhost:8081
```

---

## Testing the APIs

### Account API

```
GET http://localhost:8080/accounts/00987987973432
```

Response

```json
{
    "number": "00987987973432",
    "type": "savings",
    "balance": 234343
}
```

---

### Loan API

```
GET http://localhost:8081/loans/H00987987972342
```

Response

```json
{
    "number": "H00987987972342",
    "type": "car",
    "loan": 400000,
    "emi": 3258,
    "tenure": 18
}
```

---

## Learning Outcomes

After completing this hands-on, I was able to:

- Understand Microservice Architecture.
- Create independent Spring Boot applications.
- Develop RESTful Web Services.
- Configure different server ports.
- Build and run multiple microservices simultaneously.
- Test REST APIs using Browser and Postman.