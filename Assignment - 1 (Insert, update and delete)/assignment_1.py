import  mysql.connector
#Connection between mysql and python
mydb = mysql.connector.connect(host="localhost",  user="root", passwd="", database="bank")
mycursor =mydb.cursor()
# print(mydb)
# if(mydb):
#     print("Connection Successful")
# else:
#     print("Connection Unsuccessful")
# Creating tables
#create table Customer(C_id int not null,C_name varchar(255),C_addr  varchar(255),C_branch_id  varchar(255),C_contact int,primary key(C_id))
#create_query_2 = "create table Branch(B_id int not null, B_name varchar(255), B_addr varchar(255), primary key(B_id))"
#create_query_3 = "create table Account(Account_no int not null,C_id int not null,B_id int not null,amount int,foreign key(C_id) references Customer(C_id),  foreign key (B_id) references Branch(B_id))"
#mycursor.execute(create_query_2)
#mycursor.execute(create_query_3)
choice = "Y"
while(choice!="N"):
    print("Select the operation need to be performed")
    print("1.Insert\n2.Update\n3.Delete\n4.Read")
    ch = int(input())
    if ch==1 :
        print("Insert Query")
        insert_query = input()
        mycursor.execute(insert_query)
        mydb.commit()
    elif ch==2:
        print("UPDATE Query")
        update_query = input()
        mycursor.execute(update_query)
        mydb.commit()

    elif ch==3:
         print("DELETE Query")
         delete_query=input()
         mycursor.execute(delete_query)
         mydb.commit()
    elif ch==4:
        print("READ Query")
        read_query = input()
        mycursor.execute(read_query)
        result = mycursor.fetchall()
        for i in result:
            print(i)
    else:
        print("Invalid")
    choice=input()


mydb.commit()
