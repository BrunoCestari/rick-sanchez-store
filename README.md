<h1 align="center">
  Rick Sanchez Inventions Store 
</h1>


Dive into Rick’s chaotic world of inventions with this Spring Boot app—create, edit, and delete items that might just alter the universe!

## Technologies

- [Spring Boot](https://spring.io/projects/spring-boot)
- [Spring MVC](https://docs.spring.io/spring-framework/reference/web/webmvc.html)
- [Spring Data + MySQL](https://spring.io/guides/gs/accessing-data-mysql)
- [Thymeleaf](https://www.thymeleaf.org/doc/tutorials/3.0/thymeleafspring.html)
- [Docker](https://spring.io/guides/gs/spring-boot-docker)
- [Render](https://render.com/)



## Adopted Practices

- SOLID
- Automated testing
- Use of DTOs for data handling
- Dependency Injection
- Auditing of entity creation and updates
- Frontend with Thymeleaf
- Deployment on Render



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





