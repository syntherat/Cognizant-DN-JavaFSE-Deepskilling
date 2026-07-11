# Hands-on 1: Create a Spring Web Project using Maven

## Overview

This repository contains the solution for **Hands-on 1: Create a Spring Web Project using Maven** from the **Cognizant Digital Nurture 5.0 – Java FSE React** Deep Skilling Program.

The objective of this hands-on is to create a Spring Boot web application using **Spring Initializr**, import it as a Maven project, and understand the project structure and configuration.

---

## Objective

- Create a Spring Boot project using Spring Initializr.
- Configure Maven automatically.
- Add Spring Boot DevTools.
- Add Spring Web dependency.
- Build and run the project successfully.

---

## Technologies Used

- Java 17 (or Java 8 if specified by your training)
- Spring Boot
- Spring Web
- Spring Boot DevTools
- Maven
- Eclipse IDE

---

## Spring Initializr Configuration

| Property | Value |
|----------|-------|
| Project | Maven |
| Language | Java |
| Group | com.cognizant |
| Artifact | spring-learn |
| Name | spring-learn |
| Packaging | Jar |
| Dependencies | Spring Web, Spring Boot DevTools |

---

## Project Structure

```text
spring-learn/
│
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com.cognizant.spring_learn
│   │   │           SpringLearnApplication.java
│   │   │
│   │   └── resources
│   │       ├── application.properties
│   │       ├── static
│   │       └── templates
│   │
│   └── test
│       └── java
│           └── com.cognizant.spring_learn
│               SpringLearnApplicationTests.java
│
├── pom.xml
├── mvnw
├── mvnw.cmd
└── README.md
```

---

## How to Create the Project

1. Open **https://start.spring.io**
2. Configure:
   - Group : **com.cognizant**
   - Artifact : **spring-learn**
3. Add dependencies:
   - Spring Boot DevTools
   - Spring Web
4. Click **Generate**.
5. Extract the ZIP file.
6. Import it into Eclipse:
   - File → Import → Maven → Existing Maven Projects
7. Build the project using:

```bash
mvn clean package
```

8. Run `SpringLearnApplication.java`.

---

## Spring Boot Project Structure

### src/main/java

Contains the Java source code for the application.

### src/main/resources

Contains configuration files such as `application.properties`, static resources, and templates.

### src/test/java

Contains JUnit test classes.

---

## SpringLearnApplication.java

This is the main entry point of the Spring Boot application.

```java
@SpringBootApplication
public class SpringLearnApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringLearnApplication.class, args);
    }

}
```

---

## Purpose of @SpringBootApplication

The `@SpringBootApplication` annotation combines:

- `@Configuration`
- `@EnableAutoConfiguration`
- `@ComponentScan`

It enables auto-configuration, component scanning, and Java-based configuration for the Spring Boot application.

---

## pom.xml

The `pom.xml` file contains:

- Project Information
- Spring Boot Parent
- Dependencies
- Maven Plugins
- Build Configuration

---

## Dependency Hierarchy

Important dependencies included:

- spring-boot-starter-web
- spring-boot-starter
- spring-boot-starter-logging
- spring-web
- spring-webmvc
- spring-boot-devtools
- spring-boot-starter-test

---

## Expected Output

```text
Tomcat started on port(s): 8080 (http)
Started SpringLearnApplication in X.XXX seconds
```

---

## Learning Outcomes

After completing this hands-on, I was able to:

- Create a Spring Boot project using Spring Initializr.
- Understand the Maven project structure.
- Configure Spring Boot dependencies.
- Build and execute a Spring Boot application.
- Understand the role of `@SpringBootApplication`.
- Explore the dependency hierarchy in Maven.