# Group BETA
# Members:  Darlene Batts, Michele Brand, Lidia Goris, Aubrey Reed
# Milestone Case Study Project

import mysql.connector


mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="bacchus_admin",
  password="password123",
  database="bacchus"
)


cursor = mydb.cursor()


#Get Quarter Report for 2022

qtr1 = "SELECT SUM(Hours_Worked) FROM payroll WHERE Date_Worked BETWEEN '2022-1-1' AND '2022-3-31'"
cursor.execute(qtr1)
qtr1Hours = cursor.fetchone()
print("Total Employee Hours for 1st quarter: {}".format(qtr1Hours[0]))

qtr2="SELECT SUM(Hours_Worked) FROM payroll WHERE Date_Worked BETWEEN '2022-04-01' AND '2022-06-30'"
cursor.execute(qtr2)
qtr2Hours = cursor.fetchone()
print("Total Employee Hours for 2nd quarter: {}".format(qtr2Hours[0]))

qtr3="SELECT SUM(Hours_Worked) FROM payroll WHERE Date_Worked BETWEEN '2022-06-30' AND '2022-09-30'"
cursor.execute(qtr3)
qtr3Hours = cursor.fetchone()
print("Total Employee Hours for 3rd quarter: {}".format(qtr1Hours[0]))

qtr4="SELECT SUM(Hours_Worked) FROM payroll WHERE Date_Worked BETWEEN '2022-09-28' AND '2022-12-31'"
cursor.execute(qtr4)
qtr4Hours = cursor.fetchone()
print("Total Employee Hours for 4th quarter: {}".format(qtr1Hours[0]))



# Distributors carry which wines
Merlot = "SELECT Distributor_Name \
FROM DISTRIBUTION, PRODUCTS, ORDERS \
WHERE ORDERS.Product_ID = PRODUCTS.Product_ID \
AND DISTRIBUTION.Distributor_ID = ORDERS.Distributor_ID \
AND PRODUCTS.WINE_NAME = 'Merlot' \
GROUP BY DISTRIBUTION.Distributor_Name"

cursor.execute(Merlot)
MerlotDists = cursor.fetchall()
for MerlotDist in MerlotDists:
        print("Distributors that carry Merlot: {}".format(MerlotDist[0]))

Cabernet = "SELECT Distributor_Name \
FROM DISTRIBUTION, PRODUCTS, ORDERS \
WHERE ORDERS.Product_ID = PRODUCTS.Product_ID \
AND DISTRIBUTION.Distributor_ID = ORDERS.Distributor_ID \
AND PRODUCTS.WINE_NAME = 'Cabernet' \
GROUP BY DISTRIBUTION.Distributor_Name"

cursor.execute(Cabernet)
CabernetDists = cursor.fetchall()
for CabernetDist in CabernetDists:
        print("Distributors that carry Cabernet: {}".format(CabernetDist[0]))


Chardonnay = "SELECT Distributor_Name \
FROM DISTRIBUTION, PRODUCTS, ORDERS \
WHERE ORDERS.Product_ID = PRODUCTS.Product_ID \
AND DISTRIBUTION.Distributor_ID = ORDERS.Distributor_ID \
AND PRODUCTS.WINE_NAME = 'Chardonnay' \
GROUP BY DISTRIBUTION.Distributor_Name"

cursor.execute(Chardonnay)
ChardonnayDists = cursor.fetchall()
for ChardonnayDist in ChardonnayDists:
        print("Distributors that carry Chardonnay: {}".format(ChardonnayDist[0]))

Chablis = "SELECT Distributor_Name \
FROM DISTRIBUTION, PRODUCTS, ORDERS \
WHERE ORDERS.Product_ID = PRODUCTS.Product_ID \
AND DISTRIBUTION.Distributor_ID = ORDERS.Distributor_ID \
AND PRODUCTS.WINE_NAME = 'Chablis' \
GROUP BY DISTRIBUTION.Distributor_Name"

cursor.execute(Chablis)
ChablisDists = cursor.fetchall()
for ChablisDist in ChablisDists:
        print("Distributors that carry Chablis: {}".format(ChablisDist[0]))


# Display orders by Month
getOrders = "SELECT MONTH(Order_Date) AS Month,Amount_Ordered, Date_Distributed, Expected_Delivery,Date_Delivered \
FROM Orders \
ORDER BY Month"
cursor.execute(getOrders)
Orderdates = cursor.fetchall()
for row in Orderdates:
  print("Month:",row[0])
  print("Amount_Ordered:",row[1])
  print("Date_Distributed:",row[2])
  print("Expected_Delivery:",row[3])
  print("Date_Delivered:",row[4])
  print(" ")