#Group BETA
#Members:  Darlene Batts, Michele Brand, Lidia Goris, Aubrey Reed
# Milestone Case Study Project

#Bacchus Database
DROP DATABASE If Exists BACCHUS;
CREATE DATABASE BACCHUS;


#Drop Users
DROP USER IF EXISTS 'bacchus_admin'@'localhost';
DROP USER IF EXISTS 'sbacchus'@'localhost';
DROP USER IF EXISTS 'dbacchus'@'localhost';
DROP USER IF EXISTS 'jcollins'@'localhost';
DROP USER IF EXISTS 'rmurphy'@'localhost';
DROP USER IF EXISTS 'hdoyle'@'localhost';
DROP USER IF EXISTS 'mcostanza'@'localhost';
DROP USER IF EXISTS 'bmurphy'@'localhost';
#DROP USER IF EXISTS 'baccus_user'@'localhost';
#Create Users
CREATE USER 'bacchus_admin'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'sbacchus'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'dbacchus'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'jcollins'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'rmurphy'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'hdoyle'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'mcostanza'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'bmurphy'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password123';

#Grant privileges
GRANT ALL PRIVILEGES ON bacchus.* TO 'bacchus_admin'@'localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'sbacchus'@'localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'dbacchus'@'localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'jcollins'@'localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'rmurphy'@'localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'hdoyle'@'localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'mcostanza'@'localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'rmurphy'@'localhost';

USE BACCHUS;

#Drop Tables
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS distribution;
DROP TABLE IF EXISTS payroll;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS supplies;
DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS ORDERS;
SET FOREIGN_KEY_CHECKS = 1;


#Create Table Employees
CREATE TABLE EMPLOYEES(
EmployeeID INT NOT NULL AUTO_INCREMENT,
Employee_First_Name VARCHAR(75) NOT NULL,
Employee_Last_Name VARCHAR(75) NOT NULL,
Department VARCHAR(75) NOT NULL,
Title VARCHAR(75) NOT NULL,
Manager_First_Name VARCHAR(75) NOT NULL,
Manager_Last_Name VARCHAR(75) NOT NULL,
PRIMARY KEY(EmployeeID)
);

#Create Table Payroll
CREATE TABLE PAYROLL(
Payroll_ID INT NOT NULL AUTO_INCREMENT,
EmployeeID INT NOT NULL,
Date_Worked DATE NOT NULL,
Hours_Worked INT NOT NULL,
PRIMARY KEY(Payroll_ID)
);

#Create Table Department
CREATE TABLE DEPARTMENT(
Department_ID VARCHAR(75) NOT NULL,
Department VARCHAR(75),
PRIMARY KEY(Department_ID)
);

#Create Table SUPPLIES
CREATE TABLE SUPPLIES(
Supply_ID VARCHAR(75) NOT NULL,
Supply VARCHAR(75) NOT NULL,
Supplier VARCHAR(75) NOT NULL,
Department_ID VARCHAR(75) NOT NULL,
Date_Ordered DATE NOT NULL,
Amount_Ordered INT NOT NULL,
Received_Date DATE NOT NULL,
PRIMARY KEY(Supply_ID)
);

#Create Table PRODUCTS
CREATE TABLE PRODUCTS(
Product_ID VARCHAR(75) NOT NULL,
WINE_NAME VARCHAR(75) NOT NULL,
PRIMARY KEY(Product_ID)
);

#Create Table DISTRIBUTION
CREATE TABLE DISTRIBUTION(
Distributor_ID VARCHAR(75) NOT NULL,
Distributor_Name VARCHAR(75) NOT NULL,
PRIMARY KEY(Distributor_ID)
);

#Create Table ORDERS
CREATE TABLE ORDERS(
Order_ID INT NOT NULL AUTO_INCREMENT,
Order_Date DATE NOT NULL,
Distributor_ID VARCHAR(75) NOT NULL,
Product_ID VARCHAR(75) NOT NULL,
Amount_Ordered INT NOT NULL,
Date_Distributed DATE NOT NULL,
Expected_Delivery DATE NOT NULL,
Date_Delivered DATE NOT NULL,
PRIMARY KEY(ORDER_ID)
);


# Insert into Employees
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1111,'Stan','Bacchus', 'Owner', 'Owner','na','na');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1112,'Davis','Bacchus', 'Owner', 'Owner','na','na');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1113,'Janet','Collins', 'Finance', 'Finance Payroll Manager','Stan','Bacchus');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1114,'Roz','Murphy', 'Marketing', 'Marketing Department Manager','Stan','Bacchus');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1115,'Henry','Doyle', 'Production', 'Production line Manager','Davis','Bacchus');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1116,'Maria','Costanza', 'Distribution', 'Distribution  Manager','Davis','Bacchus');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1117,'Robert','Murphy', 'Marketing', 'Marketing Assistant','Roz','Murphy');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1118,'Abe','Jones', 'Line', 'Line Operator','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1119,'Barbara','Smith', 'Packing', 'Packer','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1120,'Carlos','Fernandes', 'Delivery', 'Driver','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1121,'Dale','Havers', 'Line', 'Line Operator','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1122,'Edwin','Coe', 'Packing', 'Packer','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1123,'Frank','Kromm', 'Line', 'Line Operator','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1124,'George','Rizzo','Packing','Packer','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1125,'Hugo','Needham', 'Packing', 'Packer','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1126,'Ivan','Lampert', 'Line', 'Line Operator','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1127,'Janet','Stewart', 'Packing', 'Packer','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1128,'Kelly','Sintas', 'Delivery', 'Driver','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1129,'Larry','Wells', 'Packing', 'Packer','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1130,'Milton','Kelly', 'Delivery', 'Driver','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1131,'Nelson','Allen', 'Line', 'Line Operator','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1132,'Oscar','Small', 'Packing', 'Packer','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1133,'Penny','Whitley', 'Line', 'Line Operator','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1134,'Quincy','Salvino', 'Line', 'Line Operator','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1135,'Roger','Bogner', 'Packing', 'Packer','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1136,'Steven','Cooper', 'Line', 'Line Operator','Henry','Doyle');
INSERT INTO EMPLOYEES (EmployeeID,Employee_First_Name,Employee_Last_Name,Department,Title,Manager_First_Name,Manager_Last_Name)
    VALUES (1137,'Thomas','Olsent', 'Packing', 'Packer','Henry','Doyle');

# Insert into Payroll
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (1,1121,'2022-01-02',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (2,1122,'2022-01-02',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (3,1123,'2022-01-03',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (4,1118,'2022-01-04',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (5,1119,'2022-01-05',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (6,1120,'2022-01-06',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (7,1121,'2022-01-07',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (8,1122,'2022-01-08',3);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (9,1123,'2022-01-09',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (10,1118,'2022-01-10',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (11,1119,'2022-01-11',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (12,1120,'2022-01-12',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (13,1121,'2022-01-13',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (14,1122,'2022-01-14',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (15,1123,'2022-01-15',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (16,1118,'2022-01-16',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (17,1119,'2022-01-17',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (18,1120,'2022-01-18',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (19,1121,'2022-01-19',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (20,1122,'2022-01-20',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (21,1123,'2022-01-21',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (22,1118,'2022-01-28',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (23,1119,'2022-01-29',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (24,1120,'2022-01-30',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (25,1121,'2022-01-31',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (26,1122,'2022-02-01',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (27,1123,'2022-02-02',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (28,1118,'2022-02-03',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (29,1119,'2022-02-04',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (30,1120,'2022-02-05',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (31,1121,'2022-02-06',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (32,1122,'2022-02-07',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (33,1123,'2022-02-08',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (34,1118,'2022-02-09',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (35,1119,'2022-02-10',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (36,1120,'2022-02-11',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (37,1121,'2022-02-12',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (38,1122,'2022-02-13',7);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (39,1123,'2022-02-14',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (40,1118,'2022-02-15',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (41,1119,'2022-02-16',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (42,1120,'2022-02-17',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (43,1121,'2022-02-18',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (44,1122,'2022-02-19',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (45,1123,'2022-02-20',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (46,1118,'2022-02-27',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (47,1119,'2022-02-28',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (48,1120,'2022-03-01',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (49,1121,'2022-03-02',10);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (50,1122,'2022-03-03',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (51,1123,'2022-03-04',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (52,1118,'2022-03-05',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (53,1119,'2022-03-06',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (54,1120,'2022-03-07',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (55,1121,'2022-03-08',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (56,1122,'2022-03-09',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (57,1123,'2022-03-10',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (58,1118,'2022-03-11',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (59,1119,'2022-03-12',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (60,1120,'2022-03-13',5);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (61,1121,'2022-03-14',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (62,1122,'2022-03-15',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (63,1123,'2022-03-16',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (64,1118,'2022-03-17',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (65,1119,'2022-03-18',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (66,1120,'2022-03-19',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (67,1121,'2022-03-20',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (68,1122,'2022-03-21',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (69,1123,'2022-03-22',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (70,1118,'2022-03-24',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (71,1119,'2022-03-25',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (72,1118,'2022-03-25',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (73,1120,'2022-03-26',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (74,1119,'2022-03-26',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (75,1120,'2022-03-27',4);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (76,1121,'2022-03-28',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (77,1122,'2022-03-28',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (78,1121,'2022-03-28',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (79,1123,'2022-03-28',7);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (80,1123,'2022-03-29',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (81,1122,'2022-03-29',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (82,1118,'2022-03-30',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (83,1119,'2022-03-31',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (84,1120,'2022-04-01',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (85,1119,'2022-04-01',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (86,1121,'2022-04-02',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (87,1120,'2022-04-02',5);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (88,1122,'2022-04-03',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (89,1121,'2022-04-03',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (90,1123,'2022-04-04',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (91,1122,'2022-04-04',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (92,1118,'2022-04-05',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (93,1123,'2022-04-05',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (94,1119,'2022-04-06',7);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (95,1120,'2022-04-07',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (96,1121,'2022-04-08',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (97,1119,'2022-04-08',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (98,1122,'2022-04-09',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (99,1120,'2022-04-09',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (100,1123,'2022-04-10',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (101,1121,'2022-04-10',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (102,1118,'2022-04-11',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (103,1122,'2022-04-11',6);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (104,1119,'2022-04-12',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (105,1123,'2022-04-12',9);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (106,1120,'2022-04-13',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (107,1118,'2022-04-13',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (108,1121,'2022-04-14',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (109,1122,'2022-04-15',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (110,1119,'2022-04-15',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (111,1123,'2022-04-16',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (112,1120,'2022-04-16',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (113,1121,'2022-04-17',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (114,1122,'2022-04-18',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (115,1123,'2022-04-19',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (116,1118,'2022-04-20',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (117,1118,'2022-04-22',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (118,1119,'2022-04-23',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (119,1120,'2022-04-24',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (120,1121,'2022-04-25',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (121,1122,'2022-04-26',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (122,1123,'2022-04-27',7);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (123,1118,'2022-04-27',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (124,1118,'2022-04-29',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (125,1119,'2022-04-30',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (126,1120,'2022-05-01',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (127,1121,'2022-05-02',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (128,1122,'2022-05-03',9);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (129,1123,'2022-05-04',5);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (130,1118,'2022-07-02',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (131,1119,'2022-07-03',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (132,1120,'2022-07-04',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (133,1121,'2022-07-06',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (134,1122,'2022-07-06',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (135,1123,'2022-07-07',4);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (136,1118,'2022-07-08',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (137,1119,'2022-07-09',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (138,1120,'2022-07-10',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (139,1121,'2022-07-11',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (140,1122,'2022-07-12',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (141,1123,'2022-07-13',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (142,1118,'2022-07-14',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (143,1119,'2022-07-15',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (144,1120,'2022-07-16',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (145,1121,'2022-07-17',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (146,1122,'2022-07-18',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (147,1123,'2022-07-19',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (148,1118,'2022-07-20',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (149,1119,'2022-07-21',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (150,1120,'2022-07-22',2);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (151,1121,'2022-07-23',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (152,1122,'2022-07-24',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (153,1123,'2022-07-25',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (154,1118,'2022-08-31',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (155,1119,'2022-09-01',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (156,1120,'2022-09-02',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (157,1121,'2022-09-04',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (158,1122,'2022-09-04',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (159,1123,'2022-09-05',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (160,1118,'2022-09-06',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (161,1119,'2022-09-07',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (162,1120,'2022-09-08',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (163,1121,'2022-09-09',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (164,1122,'2022-09-10',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (165,1123,'2022-09-11',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (166,1118,'2022-09-12',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (167,1119,'2022-09-13',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (168,1120,'2022-09-14',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (169,1121,'2022-09-15',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (170,1122,'2022-09-16',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (171,1123,'2022-09-17',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (172,1118,'2022-09-18',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (173,1119,'2022-09-19',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (174,1120,'2022-09-20',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (175,1121,'2022-09-21',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (176,1122,'2022-09-22',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (177,1123,'2022-09-23',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (178,1118,'2022-10-30',7);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (179,1119,'2022-10-31',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (180,1120,'2022-11-01',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (181,1121,'2022-11-03',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (182,1122,'2022-11-03',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (183,1123,'2022-11-04',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (184,1118,'2022-11-05',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (185,1119,'2022-11-06',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (186,1120,'2022-11-07',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (187,1121,'2022-11-08',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (188,1122,'2022-11-09',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (189,1123,'2022-11-10',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (190,1118,'2022-11-11',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (191,1119,'2022-11-12',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (192,1120,'2022-11-13',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (193,1121,'2022-11-14',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (194,1122,'2022-11-15',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (195,1123,'2022-11-16',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (196,1118,'2022-11-17',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (197,1119,'2022-11-18',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (198,1120,'2022-11-19',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (199,1121,'2022-11-20',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (200,1122,'2022-11-21',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (201,1123,'2022-11-22',5);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (202,1118,'2022-12-29',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (203,1119,'2022-12-30',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (204,1120,'2022-12-31',8);


# Insert into DEPARTMENT
INSERT INTO DEPARTMENT (Department_ID,Department)
    VALUES ('Dept1','Owner');
INSERT INTO DEPARTMENT (Department_ID,Department)
    VALUES ('Dept2','Finance');
INSERT INTO DEPARTMENT (Department_ID,Department)
    VALUES ('Dept3','Marketing');
INSERT INTO DEPARTMENT (Department_ID,Department)
    VALUES ('Dept4','Production');
INSERT INTO DEPARTMENT (Department_ID,Department)
    VALUES ('Dept5','Distribution');
INSERT INTO DEPARTMENT (Department_ID,Department)
    VALUES ('Dept6','Line');
INSERT INTO DEPARTMENT (Department_ID,Department)
    VALUES ('Dept7','Packing');
INSERT INTO DEPARTMENT (Department_ID,Department)
    VALUES ('Dept8','Delivery');

# Insert into SUPPLIES
INSERT INTO SUPPLIES (Supply_ID,Supply,Supplier,Department_ID,Date_Ordered,Amount_Ordered,Received_Date)
    VALUES ('Supply1','Bottles','Pretty Bottles','Dept4','2022-03-29',200,'2022-04-15');
INSERT INTO SUPPLIES (Supply_ID,Supply,Supplier,Department_ID,Date_Ordered,Amount_Ordered,Received_Date)
    VALUES ('Supply2','Corks','Pretty Bottles','Dept4','2022-03-30',500,'2022-04-15');
INSERT INTO SUPPLIES (Supply_ID,Supply,Supplier,Department_ID,Date_Ordered,Amount_Ordered,Received_Date)
    VALUES ('Supply3','Labels','PrintRUs','Dept7','2022-03-31',1000,'2022-04-17');
INSERT INTO SUPPLIES (Supply_ID,Supply,Supplier,Department_ID,Date_Ordered,Amount_Ordered,Received_Date)
    VALUES ('Supply4','Boxes','PrintRUs','Dept7','2022-04-01',500,'2022-04-25');
INSERT INTO SUPPLIES (Supply_ID,Supply,Supplier,Department_ID,Date_Ordered,Amount_Ordered,Received_Date)
    VALUES ('Supply5','Vats ','Just Tubes','Dept4','2021-02-22',10,'2021-04-20');
INSERT INTO SUPPLIES (Supply_ID,Supply,Supplier,Department_ID,Date_Ordered,Amount_Ordered,Received_Date)
    VALUES ('Supply6','Tubing','Just Tubes','Dept4','2022-03-29',25,'2022-04-10');

# Insert into PRODUCTS
INSERT INTO PRODUCTS (Product_ID,WINE_NAME)
    VALUES ('Wine1','Merlot');
INSERT INTO PRODUCTS (Product_ID,WINE_NAME)
    VALUES ('Wine2','Cabernet');
INSERT INTO PRODUCTS (Product_ID,WINE_NAME)
    VALUES ('Wine3','Chardonnay');
INSERT INTO PRODUCTS (Product_ID,WINE_NAME)
    VALUES ('Wine4','Chablis');

# Insert into DISTRIBUTION
INSERT INTO DISTRIBUTION (Distributor_ID,Distributor_Name)
    VALUES ('Distributor1','RJ Distributors');
INSERT INTO DISTRIBUTION (Distributor_ID,Distributor_Name)
    VALUES ('Distributor2','Over21 Wine Dis.');
INSERT INTO DISTRIBUTION (Distributor_ID,Distributor_Name)
    VALUES ('Distributor3','Wine Fairies, Inc.');

# Insert into Orders
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (1,'2022-09-26','Distributor1','Wine1',50,'2022-10-11','2022-10-17','2022-10-18');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (2,'2022-09-21','Distributor2','Wine2',35,'2022-10-06','2022-10-12','2022-10-13');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (3,'2022-09-16','Distributor3','Wine3',30,'2022-10-01','2022-10-07','2022-10-08');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (4,'2022-10-26','Distributor1','Wine4',50,'2022-11-10','2022-11-18','2022-11-17');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (5,'2022-10-21','Distributor2','Wine1',45,'2022-11-05','2022-11-13','2022-11-12');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (6,'2022-10-16','Distributor3','Wine2',25,'2022-10-31','2022-11-05','2022-11-07');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (7,'2022-11-25','Distributor1','Wine3',50,'2022-12-10','2022-12-15','2022-12-17');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (8,'2022-11-20','Distributor2','Wine4',35,'2022-12-05','2022-12-10','2022-12-12');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (9,'2022-11-15','Distributor3','Wine1',25,'2022-11-30','2022-12-06','2022-12-07');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (10,'2022-11-16','Distributor1','Wine2',25,'2022-11-30','2022-12-06','2022-12-07');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (11,'2022-11-17','Distributor2','Wine3',50,'2022-12-14','2022-12-20','2022-12-21');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (12,'2022-11-18','Distributor3','Wine4',30,'2022-12-14','2022-12-20','2022-12-21');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (13,'2022-11-19','Distributor1','Wine1',25,'2022-12-14','2022-12-22','2022-12-21');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (14,'2022-11-20','Distributor2','Wine2',50,'2022-12-18','2022-12-23','2022-12-25');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (15,'2022-11-21','Distributor3','Wine3',25,'2022-12-18','2022-12-23','2022-12-25');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (16,'2022-11-22','Distributor1','Wine4',50,'2022-12-18','2022-12-23','2022-12-25');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (17,'2022-11-23','Distributor2','Wine1',25,'2022-12-18','2022-12-23','2022-12-25');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (18,'2022-11-24','Distributor3','Wine2',100,'2022-12-20','2022-12-26','2022-12-27');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (19,'2022-11-25','Distributor1','Wine3',100,'2022-12-20','2022-12-26','2022-12-27');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (20,'2022-11-26','Distributor2','Wine4',100,'2022-12-20','2022-12-28','2022-12-27');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (21,'2022-11-27','Distributor3','Wine1',100,'2022-12-20','2022-12-26','2022-12-27');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (22,'2022-11-28','Distributor1','Wine2',50,'2022-12-30','2023-01-05','2023-01-06');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (23,'2022-11-29','Distributor2','Wine3',40,'2022-12-30','2023-01-05','2023-01-06');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (24,'2022-11-30','Distributor3','Wine4',40,'2022-12-30','2023-01-05','2023-01-06');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (25,'2022-12-01','Distributor1','Wine1',50,'2022-12-30','2023-01-05','2023-01-06');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (26,'2022-12-02','Distributor2','Wine2',50,'2022-12-30','2023-01-05','2023-01-06');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (27,'2022-12-03','Distributor3','Wine3',50,'2022-12-30','2023-01-07','2023-01-06');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (28,'2022-12-04','Distributor1','Wine4',50,'2023-01-14','2023-01-19','2023-01-21');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (29,'2022-12-05','Distributor2','Wine1',45,'2023-01-14','2023-01-19','2023-01-21');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (30,'2022-12-06','Distributor3','Wine2',45,'2023-01-14','2023-01-19','2023-01-21');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (31,'2022-12-07','Distributor1','Wine3',45,'2023-01-29','2023-02-04','2023-02-05');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (32,'2022-12-08','Distributor2','Wine4',25,'2023-01-29','2023-02-04','2023-02-05');
INSERT INTO ORDERS (Order_ID,Order_Date,Distributor_ID,Product_ID,Amount_Ordered,Date_Distributed,Expected_Delivery,Date_Delivered)
    VALUES (33,'2022-12-09','Distributor3','Wine2',25,'2023-01-29','2023-02-04','2023-02-05');
