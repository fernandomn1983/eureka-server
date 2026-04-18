# EUREKA SERVER #

Eureka Server is a REST-based service used to dynamically register API Services. It is also known as a Service Registry.

## How to run Eureka Server? ##

1. Clone the repository and navigate to the `eureka-server` directory.
2. Run the following command to start the Eureka Server:

```bash
./mvnw spring-boot:run
```
3. The Eureka Server will start on `http://localhost:8761`.
4. You can access the Eureka Dashboard at `http://localhost:8761` to see the registered services.
5. To stop the Eureka Server, press `Ctrl + C` in the terminal where it is running.
6. (Optional) You can also build the project using the following command:

```
bash./mvnw clean package
```