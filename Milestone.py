import mysql.connector


mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="bacchus_user",
  password="wine123",
  database="bacchus"
)


cursor = mydb.cursor()
# store the SELECT statement in the variable query
query = "SELECT * from employees"

cursor.execute(query)
result=cursor.fetchall()
print("--DISPLAYING Employee RECORDS--")
# loop through the rows and print required columns
for row in result:
    print("Employee ID:",row[0])
    print("Employee First Name:",row[1])
    print("Employee Last Name:",row[2])
    print(" ")
