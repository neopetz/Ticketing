CREATE DATABASE `iwanttranseat_db`;

USE `iwanttranseat_db`;

/*Bus Personnel*/
CREATE TABLE `bus_personnel` (
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`firstname` VARCHAR(20) NOT NULL,
`lastname` VARCHAR(20) NOT NULL,
`position` VARCHAR(20) NOT NULL,
`status` VARCHAR(20) NOT NULL,
`isDeleted` BOOLEAN
);

/*Operator Table*/
CREATE TABLE `operator` (
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`operator_firstname` VARCHAR(20) NOT NULL,
	`operator_lastname` VARCHAR(20) NOT NULL,
	`operator_username` VARCHAR(20) NOT NULL,
	`operator_password` VARCHAR(20) NOT NULL,
	`isDeleted` BOOLEAN DEFAULT false
);

SELECT * FROM `iwanttranseat_db`.`operator`;

/* Schedule Table */
CREATE TABLE `schedule` (
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`travel_from` VARCHAR(20) NOT NULL,
	`travel_to` VARCHAR(20) NOT NULL,
	`travel_date` DATE NOT NULL,
	`departure` TIME NOT NULL,
	`arrival` TIME NOT NULL,
	`fare` int NOT NULL,
	`isDeleted` BOOLEAN DEFAULT false
);

/* PassengerDetails Table */
CREATE TABLE `passenger`(
	`user_id` INT NOT NULL AUTO_INCREMENT,
	`firstname` VARCHAR(20) NOT NULL,
	`lastname` VARCHAR(20),
	`email` VARCHAR(30),
	`phone_number` VARCHAR(20), 
	`age` VARCHAR(3),
	`password` VARCHAR(20),
	`birth_date` VARCHAR(10),
	`isDeleted` BOOLEAN,
	`date_created` DATE,
	PRIMARY KEY (user_id)
);

/* BusDetails Table */
CREATE TABLE `bus`(
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `bus_name` VARCHAR (20),
    `bus_type` VARCHAR (30),
    `bus_seats` VARCHAR (2),
    `bus_number` VARCHAR (6),
    `plate_number` VARCHAR (8),
	`date_created` DATE,
    `date_modified` DATE,
    `is_deleted` BOOLEAN
);

/* AdminDetails Table */
CREATE TABLE `admin`(
	`admin_id` INT PRIMARY KEY AUTO_INCREMENT,
	`username` VARCHAR (20),
	`password` VARCHAR (40)
);


SELECT * FROM `bus`;
SELECT * FROM `bus` WHERE `is_deleted` <> 1;