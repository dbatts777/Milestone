#Group BETA
#Members:  Darlene Batts, Michele Brand, Lidia Goris, Aubrey Reed

#Bacchus Database
DROP DATABASE If Exists BACCHUS;
CREATE DATABASE BACCHUS;
USE BACCHUS;

#Drop Users
DROP USER IF EXISTS 'bacchus_admin@localhost';
DROP USER IF EXISTS 'sbacchus@localhost';
DROP USER IF EXISTS 'dbacchus@localhost';
DROP USER IF EXISTS 'jcollins@localhost';
DROP USER IF EXISTS 'rmurphy@localhost';
DROP USER IF EXISTS 'hdoyle@localhost';
DROP USER IF EXISTS 'mcostanza@localhost';
DROP USER IF EXISTS 'bmurphy@localhost';

#Create Users
CREATE USER 'bacchus_admin@localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'sbacchus@localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'dbacchus@localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'jcollins@localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'rmurphy@localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'hdoyle@localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'mcostanza@localhost' IDENTIFIED WITH mysql_native_password BY 'password123';
CREATE USER 'bmurphy@localhost' IDENTIFIED WITH mysql_native_password BY 'password123';

#Grant privileges
GRANT ALL PRIVILEGES ON bacchus.* TO 'bacchus_admin@localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'sbacchus@localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'dbacchus@localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'jcollins@localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'rmurphy@localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'hdoyle@localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'mcostanza@localhost';
GRANT ALL PRIVILEGES ON bacchus.* TO 'rmurphy@localhost';

#Drop Tables
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS distribution;
DROP TABLE IF EXISTS payroll;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS supplies;
DROP TABLE IF EXISTS Department;
SET FOREIGN_KEY_CHECKS = 1;

#Create Tables
#Employees
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

#Payroll
CREATE TABLE PAYROLL(
Payroll_ID INT NOT NULL AUTO_INCREMENT,
EmployeeID INT NOT NULL,
Date_Worked DATE NOT NULL,
Hours_Worked INT NOT NULL,
PRIMARY KEY(Payroll_ID)
);

#Department
CREATE TABLE DEPARTMENT(
Department_ID VARCHAR(75) NOT NULL,
Department VARCHAR(75),
PRIMARY KEY(Department_ID)
);

#SUPPLIES
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

#PRODUCTS
CREATE TABLE PRODUCTS(
Product_ID VARCHAR(75) NOT NULL,
WINE_NAME VARCHAR(75) NOT NULL,
PRIMARY KEY(Product_ID)
);

#DISTRIBUTION
CREATE TABLE DISTRIBUTION(
Distributor_ID VARCHAR(75) NOT NULL,
Distributor_Name VARCHAR(75) NOT NULL,
Date_Ordered DATE NOT NULL,
Product_Ordered VARCHAR(75) NOT NULL,
Amount_Ordered INT NOT NULL,
Date_Delivered DATE NOT NULL,
PRIMARY KEY(Distributor_ID)
);

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

#Payroll
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (1,1118,'2022/04/29',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (2,1119,'2022/04/30',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (3,1120,'2022/05/1',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (4,1121,'2022/5/2',8);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (5,1122,'2022/5/3',9);
INSERT INTO Payroll (Payroll_ID,EmployeeID,Date_Worked,Hours_Worked)
    VALUES (6,1123,'2022/5/4',5);

#DEPARTMENT
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

#SUPPLIES
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

#PRODUCTS
INSERT INTO PRODUCTS (Product_ID,WINE_NAME)
    VALUES ('Wine1','Merlot');
INSERT INTO PRODUCTS (Product_ID,WINE_NAME)
    VALUES ('Wine2','Cabernet');
INSERT INTO PRODUCTS (Product_ID,WINE_NAME)
    VALUES ('Wine3','Chardonnay');
INSERT INTO PRODUCTS (Product_ID,WINE_NAME)
    VALUES ('Wine4','Chablis');

#DISTRIBUTION
INSERT INTO DISTRIBUTION (Distributor_ID,Distributor_Name,Date_Ordered,Product_Ordered,Amount_Ordered,Date_Delivered)
    VALUES ('Distributor1','RJ Distributors','2022-11-25','Wine1',50,'2022-12-01');
INSERT INTO DISTRIBUTION (Distributor_ID,Distributor_Name,Date_Ordered,Product_Ordered,Amount_Ordered,Date_Delivered)
    VALUES ('Distributor2','Over21 Wine Dis.','2022-11-20','Wine2',35,'2022-12-06');
INSERT INTO DISTRIBUTION (Distributor_ID,Distributor_Name,Date_Ordered,Product_Ordered,Amount_Ordered,Date_Delivered)
    VALUES ('Distributor3','Wine Fairies, Inc.','2022-11-15','Wine3',25,'2022-12-10');

