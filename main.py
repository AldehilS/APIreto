import pymssql

connection = pymssql.connect(server='localhost', user='sa', password='7LhDkK$M', database='juego')
cursor = connection.cursor()

cursor.execute('SELECT * FROM usuario;')
row = cursor.fetchone()
for column in row:
    print(column[0], column[1], column[2])

connection.close()