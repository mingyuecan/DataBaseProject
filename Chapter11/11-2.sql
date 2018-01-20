DROP DATABASE IF EXISTS my_web_db;
CREATE DATABASE my_web_db;

USE my_web_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS downloads;
DROP TABLE IF EXISTS products;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    email_address VARCHAR(100),
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL
)  CHARSET UTF8, ENGINE=INNODB;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(45) NOT NULL
)  CHARSET UTF8, ENGINE=INNODB;

CREATE TABLE downloads (
    download_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    download_date DATETIME NOT NULL,
    file_name VARCHAR(50) NOT NULL,
    product_id INT NOT NULL,
    CONSTRAINT downloads_fk_users FOREIGN KEY (user_id)
        REFERENCES users (user_id),
    CONSTRAINT downloads_fk_products FOREIGN KEY (product_id)
        REFERENCES products (product_id)
)  CHARSET UTF8, ENGINE=INNODB;
-- create indexes
CREATE INDEX users_user_id_idx
ON users (user_id)

