# crud-application-using-flask-and-mysql
A simple CRUD application using Flask and MySQL

#### Built With

* Python
* Python Libraries: flask and pymysql
* MySQL
* AdminLTE 2

#### Running on Docker

```
docker-compose up -d
```

After executing, you will have 2 running cointainers on your Docker host: 
`phonebook-app` 
`phonebook-mysql`
 For accessing the web application, open your browser and go to 
 ```http://your-docker-host-ip-address:8181```

To destroy the containers, execute:

```
docker-compose down --rmi all
```

#### NOTE
In docker-compose has a adminer application (this app is equals phpadmin), to accessing the adminer open your browser and go to 
 ```http://your-docker-host-ip-address:10000```

And enter with dev | dev


version: "3"
services:
  sonarqube:
    container_name: sonar
    image: sonarqube:7.9.2-community
    ports:
      - "9000:9000"
    networks:
      - sonarnet
    environment:
      - sonar.jdbc.url=jdbc:postgresql://pg-sonar:5432/sonar
    depends_on:
      - pg-sonar
    volumes:
      - sonarqube_conf:/opt/sonarqube/conf
      - sonarqube_data:/opt/sonarqube/data
      - sonarqube_extensions:/opt/sonarqube/extensions
      - sonarqube_bundled-plugins:/opt/sonarqube/lib/bundled-plugins
 
  pg-sonar:
    container_name: pg-sonar
    image: postgres:9.6
    networks:
      - sonarnet
    environment:
      - POSTGRES_USER=sonar
      - POSTGRES_PASSWORD=sonar
    volumes:
      - postgresql:/var/lib/postgresql
      - postgresql_data:/var/lib/postgresql/data
 
networks:
    sonarnet:
 
volumes:
  sonarqube_conf:
  sonarqube_data:
  sonarqube_extensions:
  sonarqube_bundled-plugins:
  postgresql:
  postgresql_data: