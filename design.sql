CREATE TABLE governorates(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    PRIMARY KEY(id)
)
CREATE TABLE stores(
id int UNSIGNED NOT NULL AUTO_INCREMENT,
name varchar(255) NOT NULL,
address varchar(255) NOT NULL UNIQUE,
store_id int UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(store_id) REFERENCES governorates(id)
FOREIGN KEY(store_id) REFERENCES products(id)
)
CREATE TABLE products(
id int UNSIGNED NOT NULL AUTO_INCREMENT,
name varchar(255) NOT NULL,
code int(4) NOT NULL,
description text NOT NULL,
price int(5) NOT NULL,
PRIMARY KEY(id)
)
CREATE TABLE suppliers(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    email varchar(255) NOT NULL UNIQUE,
    phone int(11) NOT NULL UNIQUE,
    brief_Data text,
    PRIMARY KEY(id) REFERENCES products(id)
)