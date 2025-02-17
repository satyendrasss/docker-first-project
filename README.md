# Dockerized CodeIgniter Project
This is the basic setup of the docker project

## Overview
This project is a **Dockerized CodeIgniter application** that includes:
- **Apache + PHP 8.1** for running the CodeIgniter framework.
- **MySQL Database** for data storage.
- **phpMyAdmin** for database management.

## Prerequisites
Ensure you have the following installed:
- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Project Structure
```
/docker-first-project
  ├── application/   # CodeIgniter application files
  ├── system/        # CodeIgniter system files
  ├── public/        # Public assets (or htdocs for Apache)
  ├── Dockerfile     # Docker configuration for PHP + Apache
  ├── docker-compose.yml  # Docker services configuration
  ├── index.php      # Entry point for the application
  ├── README.md      # Project documentation
```

## Setup & Installation
### 1. Clone the Repository
```sh
git clone https://github.com/your-repo/docker-first-project.git
cd docker-first-project
```

### 2. Build and Start the Containers
```sh
docker-compose build
docker-compose up -d
```

### 3. Access the Application
- **Web Application:** http://localhost:8080
- **phpMyAdmin:** http://localhost:8081

## Database Configuration
Modify `application/config/database.php` in CodeIgniter:
```php
$db['default'] = array(
    'dsn'   => '',
    'hostname' => 'mysql_db',  // Docker service name
    'username' => 'root',
    'password' => 'pass',
    'database' => 'dbname',
    'dbdriver' => 'mysqli',
    'dbprefix' => '',
    'pconnect' => FALSE,
    'db_debug' => (ENVIRONMENT !== 'production'),
    'cache_on' => FALSE,
    'char_set' => 'utf8',
    'dbcollat' => 'utf8_general_ci',
);
```

## Stopping & Restarting the Project
To stop the containers:
```sh
docker-compose down
```
To restart the project:
```sh
docker-compose up -d
```

## Troubleshooting
### Check Logs
```sh
docker-compose logs -f
```
### Enter the PHP Container
```sh
docker exec -it docker-first-project bash
```
### Enter the MySQL Container
```sh
docker exec -it mysql_db mysql -u root -p
```

## Contributing
Feel free to contribute by submitting a pull request or opening an issue!

## License
This project is licensed under the **MIT License**.

