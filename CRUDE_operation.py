# import required modules
import mysql.connector

# create connection object
con = mysql.connector.connect(host="localhost", user="root",password="",database="school")

# create cursor object
cursor = con.cursor()

#Create database

# cursor.execute("Create database college")

# cursor.execute("Show databases")
# for i in cursor:
#     print(i)

#Create table
# cursor.execute("Create table emp(name varchar(20),sal int(20))")

#Insert data

# sqlform = "Insert into emp(name,sal) values(%s,%s)"

# employees = [("harsha",100),("abs",200),("ani",300),]
# cursor.executemany(sqlform,employees)
# con.commit()

#Select data
# cursor.execute("Select * from emp")

# temp = cursor.fetchall()

# for i in temp:
#     print(i)

#Update data

# cursor.execute("Update emp set sal=500 where name='abs'")
# con.commit()


#Delete data

cursor.execute("Delete from emp where name='abs'")

cursor.execute("Select * from emp")

temp = cursor.fetchall()

for i in temp:
    print(i)
con.commit()


