# Exercise 1: Configuring a Basic Spring Application

## Overview

This repository contains the solution for **Exercise 1: Configuring a Basic Spring Application** from the **Cognizant Digital Nurture 5.0 – Java FSE React** Deep Skilling Program.

The objective of this exercise is to configure a basic Spring application using **Spring Core**, define beans using an XML configuration file, and load the Spring Application Context.

---

## Objective

* Create a Maven project.
* Add Spring Core dependencies.
* Configure beans using `applicationContext.xml`.
* Create Service and Repository classes.
* Load the Spring Application Context.
* Verify bean creation.

---

## Technologies Used

* Java
* Spring Core
* Maven
* Eclipse / IntelliJ IDEA

---

## Concepts Covered

* Spring Framework
* Spring Core
* Inversion of Control (IoC)
* Dependency Injection (DI)
* XML Bean Configuration
* ApplicationContext

---

## Project Structure

```text
LibraryManagement/
│
├── README.md
├── pom.xml
│
├── src
│   ├── main
│   │   ├── java
│   │   │   ├── com.library.repository
│   │   │   │       BookRepository.java
│   │   │   │
│   │   │   ├── com.library.service
│   │   │   │       BookService.java
│   │   │   │
│   │   │   └── com.library
│   │   │           MainApp.java
│   │   │
│   │   └── resources
│   │           applicationContext.xml
```

---

## How It Works

* `BookRepository` manages book data.
* `BookService` provides library services.
* Beans are configured in `applicationContext.xml`.
* `MainApp` loads the Spring container and retrieves the `BookService` bean.

---

## How to Run

1. Create a Maven Project named **LibraryManagement**.
2. Add Spring Core dependency in `pom.xml`.
3. Create Java packages and classes.
4. Create `applicationContext.xml` in `src/main/resources`.
5. Run `MainApp.java`.

---

## Expected Output

```text
Book Service: Book Repository is working.
```

---

## Learning Outcomes

After completing this exercise, I was able to:

* Configure a Spring Core application.
* Define beans using XML configuration.
* Load the Spring Application Context.
* Understand the basics of IoC and Dependency Injection.

---

## Author

**Ashutosh Nanda**

B.Tech CSE | VIT Bhopal University

Digital Nurture 5.0 – Java FSE React
