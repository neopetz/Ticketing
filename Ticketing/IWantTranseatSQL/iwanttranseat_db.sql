CREATE DATABASE `iwanttranseat_db`;

USE `iwanttranseat_db`;


/*Bus Personnel*/
CREATE TABLE `bus_personnel` (
`busPersonnel_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`firstname` VARCHAR(20) NOT NULL,
`lastname` VARCHAR(20) NOT NULL,
`position` VARCHAR(20) NOT NULL,
`status` VARCHAR(20) NOT NULL,
`isDeleted` BOOLEAN
);
select * from `bus_personnel`;

SELECT id, CONCAT(firstname, ' | ',lastname) AS driver FROM bus_personnel WHERE position = "driver" 
AND status = "available" AND isDeleted <> 1 ORDER BY id;

SELECT id, CONCAT(firstname, ' | ',lastname) AS condutor FROM bus_personnel WHERE position = "conductor" 
AND status = "available" AND isDeleted <> 1 ORDER BY id;


/*Operator Table*/
CREATE TABLE `operator` (
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`operator_firstname` VARCHAR(20) NOT NULL,
`operator_lastname` VARCHAR(20) NOT NULL,
`operator_username` VARCHAR(30) NOT NULL,
`operator_password` VARCHAR(40) NOT NULL,
`isDeleted` BOOLEAN DEFAULT false
);

SELECT * FROM `iwanttranseat_db`.`operator`;

SELECT COUNT(operator.id) As OperatorCount FROM operator;


/* Schedule Table */
CREATE TABLE `schedule` (
`schedule_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`travel_from` VARCHAR(20) NOT NULL,
`travel_to` VARCHAR(20) NOT NULL,
`travel_date` DATE NOT NULL,
`departure` TIME NOT NULL,
`arrival` TIME NOT NULL,
`fare` int NOT NULL,
`isDeleted` BOOLEAN DEFAULT false
);

SELECT * FROM schedule;

SELECT CONCAT(id,' | ', travel_to, ' | ',travel_from, ' | ', travel_date, ' | ', departure, ' | ', arrival, ' | Php ', fare) AS `travel_schedule`
 FROM `iwanttranseat_db`.`schedule`;

SELECT CONCAT(id,' | ', travel_to, ' | ',travel_from, ' | ', travel_date, ' | ', departure, ' | ', arrival, ' | Php ', fare) AS travel_schedule 
FROM schedule ORDER BY id;


/* Passenger Table */
CREATE TABLE `passenger`(
`user_id` INT NOT NULL AUTO_INCREMENT,
`firstname` VARCHAR(20) NOT NULL,
`lastname` VARCHAR(20),
`email` VARCHAR(30),
`phone_number` VARCHAR(20),
`age` VARCHAR(3),
`password` VARCHAR(40),
`birth_date` VARCHAR(10),
`isDeleted` BOOLEAN,
`date_created` DATE,
PRIMARY KEY (user_id)
);


/* Bus Table */
CREATE TABLE `bus`(
`busId` INT PRIMARY KEY AUTO_INCREMENT,
`bus_name` VARCHAR (20),
`bus_type` VARCHAR (30),
`bus_seats` VARCHAR(2),
`available_seats` VARCHAR (2),
`bus_number` VARCHAR (6),
`plate_number` VARCHAR (8),
`date_created` DATE,
`date_modified` DATE,
`available_seats` VARCHAR(2),
`is_deleted` BOOLEAN
);

SELECT * FROM `bus`;

SELECT * FROM `bus` WHERE `is_deleted` <> 1;

SELECT id, CONCAT(bus_name, ' | ', bus_type, ' | Capacity:', bus_seats, ' seats | Plate no.: ', plate_number) AS travel_bus 
FROM bus WHERE is_deleted <> 1 ORDER BY id;


/* Travel Schedule Table */
CREATE TABLE `travel_schedule` (
travelId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
sched_id INT NOT NULL,
bus_id INT NOT NULL,
driver_id INT NOT NULL,
conductor_id INT NOT NULL,
isDeleted BOOLEAN
);

SELECT * FROM travel_schedule;

SELECT travelId,
CONCAT(travel_to, ' | ',travel_from, ' | ', travel_date, ' | ', departure, ' | ', arrival) AS travel_schedule,
CONCAT(bus_name, ' | ', bus_type, ' | Plate no.: ', plate_number) AS travel_bus,
CONCAT(bp1.firstname, ' ',bp1.lastname) AS driver,
CONCAT(bp2.firstname, ' ',bp2.lastname) AS conductor,
fare FROM travel_schedule
INNER JOIN schedule ON schedule.schedule_id = travel_schedule.sched_id
INNER JOIN bus ON bus.busId = travel_schedule.bus_id
INNER JOIN bus_personnel bp1 ON bp1.busPersonnel_id = travel_schedule.driver_id
INNER JOIN bus_personnel bp2 ON bp2.busPersonnel_id = travel_schedule.conductor_id;


/* Admin Table */
CREATE TABLE `admin`(
	`admin_id` INT PRIMARY KEY AUTO_INCREMENT,
	`username` VARCHAR (30),
	`password` VARCHAR (40)
);

INSERT INTO `admin` (username, password) VALUES ('admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');


/* Booking Table */
CREATE TABLE booking (
bookId int primary key not null auto_increment,
scheduleId int not null,
busId int not null,
user_id int not null
);

SELECT bookId,
travel_date, bus_name, phone_number, email,
Concat(passenger.firstname, ' ', passenger.lastname) AS fullname
FROM booking
INNER JOIN schedule ON schedule.schedule_id = booking.scheduleId
INNER JOIN bus ON bus.busId = booking.busId
INNER JOIN passenger ON passenger.user_id = booking.user_id;


/* Transaction Table */
CREATE TABLE `transaction`(
	transactionId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    bookId INT NOT NULL,
    scheduleId NOT NULL,
    paymentId INT NOT NULL
);

SELECT transactionId, transaction_code, Concat(passenger.firstname, ' ', passenger.lastname) AS fullname, 
payer_name, payer_email, payment_status, payment.date_created
FROM `transaction`
INNER JOIN booking ON booking.bookId = transaction.bookId
INNER JOIN payment ON payment.paymentId = transaction.paymentId
INNER JOIN passenger ON passenger.user_id = booking.user_id;

