#!/usr/bin/env python3
import sys

def filtrar_sdf_por_encabezados(archivo_sdf, lista_encabezados):
    with open(archivo_sdf, 'r') as sdf:
        guardar = False
        bloque = []
        contador = 1  # Contador para los archivos .mol
        for linea in sdf:
            # Si la línea es un encabezado de molécula, verificar si está en la lista de encabezados
            if linea.strip() in lista_encabezados:
                guardar = True  # Iniciar captura de bloque
                bloque = [linea]  # Reiniciar bloque con el nuevo encabezado
            elif guardar:
                bloque.append(linea)
                if "M  END" in linea:  # Si encontramos el final del bloque, guardar y detener captura
                    # Guardar en archivo Mol_{número}.mol
                    nombre_archivo = f"Mol_{contador}.mol"
                    with open(nombre_archivo, 'w') as archivo_mol:
                        archivo_mol.write("".join(bloque))
                    print(f"Guardado: {nombre_archivo}")
                    contador += 1  # Incrementar el contador para el siguiente archivo
                    guardar = False  # Detener captura hasta el siguiente encabezado
                    bloque = []  # Reiniciar bloque por si hay más moléculas

# Lista de encabezados que quieres filtrar
lista_encabezados = ["HMDB0029117_v4", "HMDB0259838|DB08828_v3", "HMDB0259838|DB08828_v5", "HMDB0257127|DB11656_v2", "HMDB0257127|DB11656_v5", "HMDB0252245|DB04847_v3", "HMDB0251786|DB13874_v4", "HMDB0000121|DB00158_v4", "HMDB0000121|DB00158_v5", "HMDB0256360|DB12978_v3", "HMDB0256360|DB12978_v4", "HMDB0257137|DB08896_v1", "HMDB0257137|DB08896_v2", "HMDB0257137|DB08896_v5", "HMDB0249595|DB11791_v2", "HMDB0247749|DB12001_v3", "HMDB0249524|DB08875_v4"]  # Reemplaza por tus encabezados

# Verificar si se proporciona el archivo de entrada en los argumentos
if len(sys.argv) != 2:
    print("Uso: ./script.py <archivo_sdf>")
    sys.exit(1)

archivo_entrada = sys.argv[1]
filtrar_sdf_por_encabezados(archivo_entrada, lista_encabezados)

