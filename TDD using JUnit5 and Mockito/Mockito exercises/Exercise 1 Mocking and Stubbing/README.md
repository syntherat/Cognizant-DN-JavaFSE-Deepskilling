# Exercise 1: Mocking and Stubbing (Mockito)

## Overview

This repository contains the solution for **Exercise 1: Mocking and Stubbing** from the **Cognizant Digital Nurture 5.0 – Java FSE React** Deep Skilling Program.

The objective of this exercise is to understand how to use **Mockito** to create mock objects, stub method calls, and write unit tests for classes that depend on external services.

---

## Objective

* Learn Mocking using Mockito.
* Stub method responses.
* Test classes without calling an actual external API.
* Verify expected outputs using JUnit assertions.

---

## Technologies Used

* Java
* JUnit 5
* Mockito
* Maven
* Eclipse / IntelliJ IDEA

---

## Concepts Covered

* Unit Testing
* Mocking
* Stubbing
* Mockito
* JUnit 5
* Dependency Injection

---

## Project Structure

```text
Exercise1-MockingAndStubbing/
│
├── README.md
├── pom.xml
│
├── src
│   ├── main
│   │   └── java
│   │       ├── ExternalApi.java
│   │       └── MyService.java
│   │
│   └── test
│       └── java
│           └── MyServiceTest.java
```

---

## How It Works

* `ExternalApi` represents an external dependency.
* `MyService` depends on `ExternalApi`.
* Mockito creates a mock implementation of `ExternalApi`.
* The `getData()` method is stubbed to return `"Mock Data"`.
* The unit test verifies that `MyService` correctly returns the mocked response.

---

## How to Run

1. Create a Maven Project.
2. Add JUnit 5 and Mockito dependencies.
3. Create all Java files.
4. Run `MyServiceTest.java` as a **JUnit Test**.

---

## Expected Output

```text
Tests run: 1

Failures: 0

Errors: 0

BUILD SUCCESS
```

---

## Learning Outcomes

After completing this exercise, I was able to:

* Create mock objects using Mockito.
* Stub method behavior.
* Perform isolated unit testing.
* Test services with external dependencies.
* Use JUnit 5 together with Mockito.

---

## Author

**Ashutosh Nanda**

B.Tech CSE | VIT Bhopal University

Digital Nurture 5.0 – Java FSE React
