
# My Project 

# Attendance Viewer System

A simple web-based Attendance Viewer System built using **JSP, Servlets, and HttpSession**.  
This project allows a student to log in, view attendance details, access protected pages through session-based authentication, and log out securely.

## Features

- Student login page
- Session-based authentication
- Dashboard to view attendance details
- Protected pages accessible only after login
- Logout option to end session
- Simple and professional UI

## Technologies Used

- Java
- JSP
- Servlets
- HttpSession
- HTML
- CSS
- Apache Tomcat
- IntelliJ IDEA

## Project Structure

```text
AttendanceViewerSystem/
│
├── src/
│   └── main/
│       ├── java/
│       │   └── com/example/
│       │       ├── LoginServlet.java
│       │       └── LogoutServlet.java
│       │
│       └── webapp/
│           ├── index.jsp
│           ├── dashboard.jsp
│           ├── logout.jsp
│           └── WEB-INF/
│               └── web.xml
│
├── pom.xml
└── README.md

