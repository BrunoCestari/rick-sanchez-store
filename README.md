<h1 align="center">
  Rick Sanchez Inventions Store: <a target="_blank" href="https://rick-sanchez-store.onrender.com/" >Visit Here</a>
</h1>


[![Alt text for the GIF](https://github.com/user-attachments/assets/c5989aea-3566-42fc-9461-6f7675e4986e)](https://rick-sanchez-store.onrender.com/)
    
Dive into Rick’s chaotic world of inventions with this Spring Boot app—create, edit, and delete items that might just alter the universe!
You can check it out here: [https://rick-sanchez-store.onrender.com/](https://rick-sanchez-store.onrender.com/)
## Technologies

- [Spring Boot](https://spring.io/projects/spring-boot)
- [Spring MVC](https://docs.spring.io/spring-framework/reference/web/webmvc.html)
- [Spring Data + MySQL](https://spring.io/guides/gs/accessing-data-mysql)
- [Thymeleaf](https://www.thymeleaf.org/doc/tutorials/3.0/thymeleafspring.html)
- [Docker](https://spring.io/guides/gs/spring-boot-docker)
- [Render](https://render.com/)
- [Aiven](https://aiven.io/)
- [JUnit 5](https://junit.org/junit5/)
- [MockMvc](https://spring.io/guides/gs/testing-web)
- [Mockito](https://site.mockito.org/)


## Overview
This project is built using **Spring Boot** for the backend, which handles the core logic, routing, and dependency management. **Spring MVC** is used to organize the application into models, views, and controllers.

For data persistence, **Spring Data** connects to a **MySQL database** hosted on **Aiven**, offering a free MySQL service for storing and managing the data. The application is fully tested with unit and integration tests using **JUnit 5**, **MockMvc**, and **Mockito**.

The app is containerized using **Docker** for easy deployment and is hosted on **Render**.

On the frontend, **Thymeleaf** is used to render dynamic HTML pages.

An initial SQL script `(sql/init.sql)` is used to populate the database with data and **includes triggers that automatically reset it every 10 minutes**, ensuring data hygiene and consistency.


## How to Run


###  Using Docker (Recommended)

To run the application with Docker, you'll need to have [Docker](https://docs.docker.com/engine/) and [Docker Compose](https://docs.docker.com/compose/) installed. 

1. Clone the git repository:
```
git clone https://github.com/BrunoCestari/rick-sanchez-store.git 
```
2. Navigate to the project directory:
```
cd rick-sanchez-inventions-store
```
3. Build and start the services:

```
docker-compose up --build
```
4. Acess application at [localhost:8080](http://localhost:8080).


5. You can access MySQL at `localhost:3307` using a MySQL client (username: `root`, password: `mysql-password`, database: `rickstoredb`).


6. Stop the services:
```
docker-compose down
```


### Without Docker (Manual Setup)

If you prefer not to use Docker, you can set up the application manually by following these steps:

1. Install MySQL:
- Download and install MySQL from the official website: [MySQL Downloads](https://dev.mysql.com/downloads/https://dev.mysql.com/downloads/).


- After installation, make sure to create a MySQL user `root` with the password `mysql-password`, and create the database `rickstoredb`.

2.  Log in to the MySQL shell::

  ``` 
  mysql -u root -p
  ```
3. Create the `rickstoredb` database by running the following SQL command:
  ```
  CREATE DATABASE rickstoredb;
  ```

3.  Run  the init.sql file  to set up the tables and data (optional) :
```
mysql -u root -p -h 127.0.0.1 rickstoredb < ./sql/init.sql

```
4. Configure application.properties file:
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/rickstoredb
spring.datasource.username=root
spring.datasource.password=mysql-password
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
```

5. Build and run the Spring Boot application:
```
./mvnw clean package
java -jar target/rick-sanchez-store-0.0.1-SNAPSHOT.jar
```

6. Access application at [localhost:8080](http://localhost:8080).



## Optimizations
- Extract internal CSS into an external stylesheet for improved modularity and maintainability. 
- Try another styles
- Get more data
- Optimize data hygiene scripts
- Migrate the MySQL database from Aiven to Render for better integration with the application hosting environment.