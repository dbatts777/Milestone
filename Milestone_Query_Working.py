#### Practice ONLY do not use for end results

import mysql.connector




mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="bacchus_admin",
  password="password123",
  database="bacchus"
)


cursor = mydb.cursor()

#Works
cursor.execute(
"SELECT SUM(Amount_Ordered) FROM ORDERS WHERE PRODUCT_ID = 'Wine1'")

totalOrderItems = cursor.fetchone()

print("Total Wine 1: {}".format(totalOrderItems[0]))

#works
def employeeHours(cursor, title):
    cursor.execute("select Employee_First_Name as 'Employee First Name',Employee_Last_Name as 'Employee Last Name', Date_Worked as 'Date Worked', Hours_Worked as 'Hours Worked' from employees INNER JOIN payroll ON Employees.EmployeeID=payroll.EmployeeID")

    employees = cursor.fetchall()
    print("\n -- {} --".format(title))
    
    for employee in employees:
        print("Employee First Name: {}\nEmployee Last Name: {}\nDate Worked ID: {}\nHours Worked: {}\n".format(
            employee[0], employee[1], employee[2], employee[3]))

employeeHours(cursor, "DISPLAYING Employee INFO")

#Works
cursor.execute("SELECT SUM(Hours_Worked) FROM payroll WHERE EmployeeID = 1120")

ttlHours = cursor.fetchone()

print("Total Hours for 1120: {}".format(ttlHours[0]))


#Doesn't work well
cursor.execute("SELECT SUM(Amount_Ordered) FROM Orders Where Order_Date BETWEEN '2022-11-1' AND '2022-12-1'")
ttlAmtOrder = cursor.fetchone()
print("Total Orders during specific dates: {}".format(ttlAmtOrder[0]))


#Doesn't work well
cursor.execute("SELECT MONTH(Order_Date) AS 'Month Ordered',Amount_Ordered AS 'Amount Ordered' FROM ORDERS")
ttlOrders = cursor.fetchall()
print("Total Orders : {}".format(ttlOrders[0]))

#Works
cursor.execute("SELECT Product_ID, Amount_Ordered, distributor_id FROM Orders")
result = cursor.fetchall()

print("\n--DISPLAYING WINE RECORDS--")
for x in result:
  print("Wine ID: {}" .format(x[0]))
  print("Amount Ordered: {}" .format(x[1]))
  print("Distributor ID: {}" .format(x[2]))



qtr1 = "SELECT SUM(Hours_Worked) FROM payroll WHERE Date_Worked BETWEEN '2022-1-1' AND '2022-3-31'"
cursor.execute(qtr1)
qtr1Hours = cursor.fetchone()
print("Average Hours for 1st quarter: {}".format(qtr1Hours[0]))

qtr2="SELECT SUM(Hours_Worked) FROM payroll WHERE Date_Worked BETWEEN '2022-04-01' AND '2022-06-30'"
cursor.execute(qtr2)
qtr2Hours = cursor.fetchone()
print("Average Hours for 2nd quarter: {}".format(qtr2Hours[0]))

qtr3="SELECT SUM(Hours_Worked) FROM payroll WHERE Date_Worked BETWEEN '2022-06-30' AND '2022-09-30'"
cursor.execute(qtr3)
qtr3Hours = cursor.fetchone()
print("Average Hours for 3rd quarter: {}".format(qtr1Hours[0]))

qtr4="SELECT SUM(Hours_Worked) FROM payroll WHERE Date_Worked BETWEEN '2022-09-28' AND '2022-12-31'"
cursor.execute(qtr4)
qtr4Hours = cursor.fetchone()

print("Average Hours for 4th quarter: {}".format(qtr1Hours[0]))


# Get Amount ordered from each distributor
cursor.execute("SELECT Product_ID, Amount_Ordered, distributor_id FROM Orders")
result = cursor.fetchall()

print("\n--DISPLAYING WINE RECORDS--")
for x in result:
  print("Wine ID: {}" .format(x[0]))
  print("Amount Ordered: {}" .format(x[1]))
  print("Distributor ID: {}" .format(x[2]))
