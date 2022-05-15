# IoTBay Group 41
**41025 ISD Assignment 1 Analysis, Planning, Architecture & Design** - 03/04/2022

**41025 ISD Assginment 2 Project - Implementation & Testing** - 15/05/2022

### Team
- **Justin Chin Wei Kit**
- Jacky Bahary
- Pei Han Lee
- Jingxuan Liu
- Sung Hoon Kim
- Jefrich Pekantan

### Description
IoTBay is a web application built based on an MVC Architecture using: 
- Java Server Pages
- Java Servlet
- Apache Derby Database (Ver: 10.14.2.0)  

### Requirements
- Download NetBeans IDE Version 12.6
- Glassfish Server 4.1
- Apache Derby Version 10.14.2.0 is downloaded: https://downloads.apache.org/db/derby/db-derby-10.14.2.0/

### JDK Environment
Ensure that JDK **8** is installed onto your machine 

### Initial Steps
1. Clone the repository or download the code
2. Unzip the downloaded file if necessary
3. Open NetBeans IDE and open the project to import it
4. After opening, click on "Resolve Missing Server Problem"
5. Choose Glassfish Server, and select version 4.1 in the dropdown menu
6. Right click on the project file and select "Clean & Build"

### Database Deployment
1. In NetBeans go to the Services Tab (Tools -> Services) 
2. Right-click on Java DB and choose "Create Database". Use the following credentials to ensure proper connection:
    - **Database Name:** usersdb
    - **User name:** iotbay
    - **Password:** admin
3. Navigate to the Files Tab (Tools -> Files) -> src -> db. Run the following two files in sequence by right-clicking on them 
    - DBCreationScript.sql
    - DBInsertionScript.sql
4. Database has been created and populated
