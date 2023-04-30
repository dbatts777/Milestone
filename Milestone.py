import mysql.connector


mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="bacchus_user",
  password="wine123",
  database="bacchus"
)


mycursor = mydb.cursor()

# Drop Tables if Exist
mycursor.execute("DROP TABLE IF EXISTS distribution")
mycursor.execute("DROP TABLE IF EXISTS payroll")
mycursor.execute("DROP TABLE IF EXISTS employees")
mycursor.execute("DROP TABLE IF EXISTS products")
mycursor.execute("DROP TABLE IF EXISTS supplies")
mycursor.execute("DROP TABLE IF EXISTS Department")

# Create Tables with Columns
mycursor.execute("CREATE TABLE employees (EmployeeID Int PRIMARY KEY,Employee_First_Name VARCHAR(75), Employee_Last_Name VARCHAR(75),Department VARCHAR(75),Title VARCHAR(75),Manager_First_Name VARCHAR(75) , Manager_Last_Name VARCHAR(75))")

mycursor.execute("CREATE TABLE Department (Department_ID VARCHAR(75),Department VARCHAR(75),PRIMARY KEY(Department_ID))")

mycursor.execute("CREATE TABLE Payroll (Payroll_ID INT PRIMARY KEY,EmployeeID INT,Date_Worked DATE,Hours_Worked INT,FOREIGN KEY (EmployeeID) REFERENCES employees(EmployeeID))")

mycursor.execute("CREATE TABLE Products (Product_ID VARCHAR(75),WINE_NAME VARCHAR(75),PRIMARY KEY(Product_ID))")

mycursor.execute("CREATE TABLE Distribution (Distributor_Name VARCHAR(75),Distributor_ID VARCHAR(75),Date_Ordered DATE,Product_Ordered VARCHAR(75),Amount_Ordered INT,Date_Delivered DATE,PRIMARY KEY(Distributor_ID))")

mycursor.execute("CREATE TABLE Supplies (Supply_ID VARCHAR(75), Supply VARCHAR(75),Supplier VARCHAR(75),Department_ID VARCHAR(75),Date_Ordered DATE,Amount_Ordered INT,Received_Date DATE,FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID),PRIMARY KEY(Supply_ID))")



# Add data to Tables
# Add to Employees Table
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1111,'Stan','Bacchus', 'Owner', 'Owner','na','na')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1112,'Davis','Bacchus', 'Owner', 'Owner','na','na')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1113,'Janet','Collins', 'Finance', 'Finance Payroll Manager','Stan','Bacchus')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1114,'Roz','Murphy', 'Marketing', 'Marketing Department Manager','Stan','Bacchus')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1115,'Henry','Doyle', 'Production', 'Production line Manager','Davis','Bacchus')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1116,'Maria','Costanza', 'Distribution', 'Distribution  Manager','Davis','Bacchus')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1117,'Robert','Murphy', 'Marketing', 'Marketing Assistant','Roz','Murphy')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1118,'Abe','Jones', 'Line', 'Line Operator','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1119,'Barbara','Smith', 'Packing', 'Packer','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1120,'Carlos','Fernandes', 'Delivery', 'Driver','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1121,'Dale','Havers', 'Line', 'Line Operator','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1122,'Edwin','Coe', 'Packing', 'Packer','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1123,'Frank','Kromm', 'Line', 'Line Operator','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1124,'George','Rizzo','Packing','Packer','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1125,'Hugo','Needham', 'Packing', 'Packer','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1126,'Ivan','Lampert', 'Line', 'Line Operator','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1127,'Janet','Stewart', 'Packing', 'Packer','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1128,'Kelly','Sintas', 'Delivery', 'Driver','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1129,'Larry','Wells', 'Packing', 'Packer','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1130,'Milton','Kelly', 'Delivery', 'Driver','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1131,'Nelson','Allen', 'Line', 'Line Operator','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1132,'Oscar','Small', 'Packing', 'Packer','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1133,'Penny','Whitley', 'Line', 'Line Operator','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1134,'Quincy','Salvino', 'Line', 'Line Operator','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1135,'Roger','Bogner', 'Packing', 'Packer','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1136,'Steven','Cooper', 'Line', 'Line Operator','Henry','Doyle')""")
mycursor.execute("""INSERT INTO EMPLOYEES VALUES (1137,'Thomas','Olsent', 'Packing', 'Packer','Henry','Doyle')""")



# Add Data to Payroll
mycursor.execute("""INSERT INTO PAYROLL(Payroll_ID) VALUES (1)""")
mycursor.execute("""INSERT INTO PAYROLL(Payroll_ID) VALUES (2)""")


# Add Data to Department
mycursor.execute("""INSERT INTO Department VALUES ('Dept1','Owner')""")
mycursor.execute("""INSERT INTO Department VALUES ('Dept2','Finance')""")
mycursor.execute("""INSERT INTO Department VALUES ('Dept3','Marketing')""")
mycursor.execute("""INSERT INTO Department VALUES ('Dept4','Production')""")
mycursor.execute("""INSERT INTO Department VALUES ('Dept5','Distribution')""")
mycursor.execute("""INSERT INTO Department VALUES ('Dept6','Line')""")
mycursor.execute("""INSERT INTO Department VALUES ('Dept7','Packing')""")
mycursor.execute("""INSERT INTO Department VALUES ('Dept8','Delivery')""")


# Add Data to Supplies
mycursor.execute("""INSERT INTO Supplies(Supply_ID,Supply,Supplier,Department_ID) VALUES ('Supply1','Bottles','Pretty Bottles','Dept4')""")
mycursor.execute("""INSERT INTO Supplies(Supply_ID,Supply,Supplier,Department_ID) VALUES ('Supply2','Corks','Pretty Bottles','Dept4')""")
mycursor.execute("""INSERT INTO Supplies(Supply_ID,Supply,Supplier,Department_ID) VALUES ('Supply3','Labels','PrintRUs','Dept7')""")
mycursor.execute("""INSERT INTO Supplies(Supply_ID,Supply,Supplier,Department_ID) VALUES ('Supply4','Boxes','PrintRUs','Dept7')""")
mycursor.execute("""INSERT INTO Supplies(Supply_ID,Supply,Supplier,Department_ID) VALUES ('Supply5','Vats ','Just Tubes','Dept4')""")
mycursor.execute("""INSERT INTO Supplies(Supply_ID,Supply,Supplier,Department_ID) VALUES ('Supply6','Tubing','Just Tubes','Dept4')""")


# Add Data to Products
mycursor.execute("""INSERT INTO PRODUCTS VALUES ('Merlot','Wine1')""")
mycursor.execute("""INSERT INTO PRODUCTS VALUES ('Cabernet','Wine2')""")
mycursor.execute("""INSERT INTO PRODUCTS VALUES ('Chardonnay','Wine3')""")
mycursor.execute("""INSERT INTO PRODUCTS VALUES ('Chablis','Wine4')""")


# Add Data to Distribution
mycursor.execute("""INSERT INTO DISTRIBUTION(Distributor_Name,Distributor_ID) VALUES ('RJ Distributors','Distributor1')""")
mycursor.execute("""INSERT INTO DISTRIBUTION(Distributor_Name,Distributor_ID) VALUES ('Over21 Wine Dis.','Distributor2')""")
mycursor.execute("""INSERT INTO DISTRIBUTION(Distributor_Name,Distributor_ID) VALUES ('Wine Fairies, Inc.','Distributor3')""")

mydb.commit()
