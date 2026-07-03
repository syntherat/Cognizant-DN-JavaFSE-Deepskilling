# Exercise 4 Arrange-Act-Assert (AAA) Pattern, Test Fixtures, Setup and Teardown Methods in JUnit

## Overview

This repository contains the solution for Exercise 4 Arrange-Act-Assert (AAA) Pattern, Test Fixtures, Setup and Teardown Methods in JUnit from the Cognizant Digital Nurture 5.0 – Java FSE React Deep Skilling Program.

The objective of this exercise is to understand the AAA (Arrange-Act-Assert) testing pattern and use @Before and @After annotations for test setup and cleanup.

---

## Objective

 Understand the Arrange-Act-Assert (AAA) Pattern.
 Create reusable test fixtures.
 Perform setup using @Before.
 Perform cleanup using @After.
 Execute unit tests successfully.

---

## Technologies Used

 Java
 JUnit 4.13.2
 Maven
 Eclipse  IntelliJ IDEA

---

## Concepts Covered

 Unit Testing
 Arrange-Act-Assert (AAA) Pattern
 Test Fixtures
 @Before Annotation
 @After Annotation
 Assertions

---

## Project Structure

```text
Exercise4-AAAPattern
│
├── README.md
├── pom.xml
│
├── src
│   ├── main
│   │   └── java
│   │       └── Calculator.java
│   │
│   └── test
│       └── java
│           └── CalculatorTest.java
```

---

## AAA Pattern

### Arrange

Create the required objects and initialize test data.

### Act

Call the method that needs to be tested.

### Assert

Verify the expected result using assertions.

---

## Test Fixtures

Test fixtures are used to prepare the environment before each test and clean it afterward.

 @Before → Executes before every test method.
 @After → Executes after every test method.

---

## How to Run

1. Create a Maven Project.
2. Add the JUnit dependency.
3. Create `Calculator.java`.
4. Create `CalculatorTest.java`.
5. Right-click CalculatorTest.java.
6. Select Run As → JUnit Test.

---

## Expected Output

```text
Setting up Calculator...
Cleaning up...
Tests run 1

Failures 0

Errors 0

BUILD SUCCESS
```

---

## Learning Outcomes

After completing this exercise, I was able to

 Apply the Arrange-Act-Assert testing pattern.
 Use setup and teardown methods.
 Create reusable test fixtures.
 Write clean and maintainable JUnit test cases.

---

## Author

Ashutosh Nanda

B.Tech CSE  VIT Bhopal University

Digital Nurture 5.0 – Java FSE React
