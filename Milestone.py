import mysql.connector


mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="bacchus_user",
  password="wine123",
  database="bacchus"
)


cursor = mydb.cursor()


# store the SELECT statement in the variable query & Display Employee Table

query = "SELECT * from employees"
cursor.execute(query)
result=cursor.fetchall()
print("--DISPLAYING Employee RECORDS--")
# loop through the rows and print required columns

for row in result:
  print("Employee ID:",row[0])
  print("Employee First Name:",row[1])
  print("Employee Last Name:",row[2])
  print("Department:",row[3])
  print("Title:",row[4])
  print("Manager First Name:",row[5])
  print("Manager Last Name:",row[6])
  print(" ")

# store the SELECT statement in the variable query & Display Employee Table
query = "SELECT * from Payroll"
cursor.execute(query)
result=cursor.fetchall()
print("--DISPLAYING Payroll RECORDS--")

for row in result:
  print("Payroll ID:",row[0])
  print("Employee ID:",row[1])
  print("Date Worked:",row[2])
  print("Hours Worked:",row[3])
  print(" ")

# store the SELECT statement in the variable query & Display Department Table
query = "SELECT * from Department"
cursor.execute(query)
result=cursor.fetchall()
print("--DISPLAYING Department RECORDS--")

for row in result:
  print("Department ID:",row[0])
  print("Department:",row[1])
  print(" ")

# store the SELECT statement in the variable query & Display SUPPLIES Table
query = "SELECT * from SUPPLIES"
cursor.execute(query)
result=cursor.fetchall()
print("--DISPLAYING SUPPLIES RECORDS--")

for row in result:
  print("Supply ID:",row[0])
  print("Supply:",row[1])
  print("Supplier:",row[2])
  print("Department ID:",row[3])
  print("Date Ordered:",row[4])
  print("Amount Ordered:",row[5])
  print("Received Date:",row[6])
  print(" ")

# store the SELECT statement in the variable query & Display PRODUCTS Table
query = "SELECT * from PRODUCTS"
cursor.execute(query)
result=cursor.fetchall()
print("--DISPLAYING PRODUCTS RECORDS--")

for row in result:
  print("Product ID:",row[0])
  print("WINE NAME:",row[1])
  print(" ")

# store the SELECT statement in the variable query & Display DISTRIBUTION Table
query = "SELECT * from DISTRIBUTION"
cursor.execute(query)
result=cursor.fetchall()
print("--DISPLAYING DISTRIBUTION RECORDS--")

for row in result:
  print("Distributor ID:",row[0])
  print("Distributor Name:",row[1])
  print("Date Ordered:",row[2])
  print("Product Ordered:",row[3])
  print("Amount Ordered:",row[4])
  print("Date Delivered:",row[5])
  print(" ")

  

