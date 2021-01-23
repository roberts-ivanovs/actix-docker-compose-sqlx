
CREATE DATABASE IF NOT EXISTS `actix_todo`;
USE `actix_todo`;

DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `todo`;
DROP TABLE IF EXISTS `subtask`;


CREATE TABLE IF NOT EXISTS users (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(64) NOT NULL UNIQUE,
	`email` VARCHAR(256) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS todo (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(64) NOT NULL UNIQUE,
    `owener_id` int NOT NULL,
    FOREIGN KEY (`owener_id`) REFERENCES `users`(`id`)
);

CREATE TABLE IF NOT EXISTS subtask (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(64) NOT NULL UNIQUE,
    `owener_id` int NOT NULL,
    FOREIGN KEY (`owener_id`) REFERENCES `users`(`id`)
);