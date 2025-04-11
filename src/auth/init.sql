CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Admin123'; -- Create a user that can access the database

CREATE DATABASE auth;

GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';

USE auth;

CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO user (email, password) VALUES ('waleed@email.com', 'Admin123'); -- Create a starting user

