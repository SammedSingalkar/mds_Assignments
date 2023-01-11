import socket
from _thread import *
ServerSideSocket = socket.socket()
host = socket.gethostname()
port = 5000
ThreadCount = 0

import mysql.connector

# create connection object
con = mysql.connector.connect(
host="localhost", user="root",
password="", database="banking")
clients = []
# create cursor object
cursor = con.cursor()

try:
    ServerSideSocket.bind((host, port))
except socket.error as e:
    print(str(e))
print('Socket is listening..')
ServerSideSocket.listen(2)
def multi_threaded_client(connection,info):
    connection.send(str.encode('<Prepare T>'))
    # while True:
    #     data = connection.recv(2048)
    #     response = 'Server message: ' + data.decode('utf-8')
    #     if not data:
    #         break
    #     # print(info)
    #     connection.sendall(str.encode(info))
    # connection.close()
while True:
    Client, address = ServerSideSocket.accept()
    print('Connected to: ' + address[0] + ':' + str(address[1]))
    query1 = str("select * from cust")
    cursor.execute(query1)
    table = cursor.fetchall()
    data1 = ""
    clients.append(Client)
    start_new_thread(multi_threaded_client, (Client, data1))

    ThreadCount += 1
    if ThreadCount == 2:
        flag = 1
        print(clients)
        for i in clients:
            data = i.recv(2048).decode()
            print("received : ",data)
            if data == "<NO T>" or data == "":
                flag = 0
        if flag:
            q1 = "SELECT amount FROM cust WHERE c_id=1"
            cursor.execute(q1)
            value = str(int(cursor.fetchall()[0][0])+500)
            print(value,"value ")
            q1 = "UPDATE cust SET amount = " + value +" WHERE c_id=1;  "
            cursor.execute(q1)
            con.commit()
            for i in clients:
                i.send(str.encode("<COMMIT T>"))
                # i.close()
        else:
            for i in clients:
                i.send(str.encode("<ABORT T>"))
    
    
    print('Thread Number: ' + str(ThreadCount))
ServerSideSocket.close()