import pymssql
from datetime import datetime

def get_usuarios():
    cursor.execute('select * from usuario;')
    return cursor.fetchall()

def get_partidas():
    cursor.execute('select * from partida;')
    return cursor.fetchall()

def get_partidasminijuego():
    cursor.execute('select * from [partida-minijuego];')
    return cursor.fetchall()

def get_minijuegos():
    cursor.execute('select * from minijuego;')
    return cursor.fetchall()

def get_habilidades():
    cursor.execute('select * from habilidad;')
    return cursor.fetchall()


connection = pymssql.connect(server='localhost', user='sa', password='7LhDkK$M', database='juego')
cursor = connection.cursor()

usuarios = get_usuarios()
partidas = get_partidas()
partidasminijuego = get_partidasminijuego()
minijuegos = get_minijuegos()
habilidades = get_habilidades()

with open('CSV/usuarios.csv','w') as file:
    file.write('idUsuario,Nombre,Apellido,Fecha de Nacimiento,contraseña,Correo,Teléfono,País,admin\n')
    for usuario in usuarios:
        fechaNacimiento = usuario[3].strftime('%Y-%m-%d')
        file.write(f'{usuario[0]},{usuario[1]},{usuario[2]},{fechaNacimiento},{usuario[4]},{usuario[5]},{usuario[6]},{usuario[7]},{usuario[8]}\n')

with open('CSV/partidas.csv','w') as file:
    file.write('idUsuario,idPartida,Fecha y hora de Inicio,Fecha y hora final,Puntuación Acumulada\n')
    for partida in partidas:
        fechaInicio = partida[2].strftime('%Y-%m-%d %H:%M:%S')
        if not partida[3] is None:
            fechaFin = partida[3].strftime('%Y-%m-%d %H:%M:%S')
            file.write(f'{partida[0]},{partida[1]},{fechaInicio},{fechaFin},{partida[0]}\n')
        else:
            file.write(f'{partida[0]},{partida[1]},{fechaInicio},NULL,{partida[0]}\n')

connection.close()