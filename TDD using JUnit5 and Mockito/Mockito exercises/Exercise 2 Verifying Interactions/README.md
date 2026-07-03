# Exercise 2: Verifying Interactions (Mockito)

## Overview

This repository contains the solution for **Exercise 2: Verifying Interactions** from the **Cognizant Digital Nurture 5.0 – Java FSE React** Deep Skilling Program.

The objective of this exercise is to verify that a mocked object's method is invoked correctly using **Mockito's `verify()`** method.

---

## Objective

* Create a mock object.
* Invoke a method on the mock object.
* Verify that the expected interaction occurred.
* Perform interaction-based unit testing using Mockito.

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
* Mockito
* Mock Objects
* verify() Method
* Interaction Testing
* Dependency Injection

---

## Project Structure

```text
Exercise2-VerifyingInteractions/
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
* `MyService` calls the `getData()` method of `ExternalApi`.
* Mockito creates a mock implementation of `ExternalApi`.
* The test invokes `fetchData()`.
* The `verify()` method checks whether `getData()` was called exactly once.

---

## How to Run

1. Create a Maven Project.
2. Add the JUnit 5 and Mockito dependencies.
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
* Verify method interactions using `verify()`.
* Perform interaction-based unit testing.
* Test service classes independently from external dependencies.

---

## Author

**Ashutosh Nanda**

B.Tech CSE | VIT Bhopal University

Digital Nurture 5.0 – Java FSE React
