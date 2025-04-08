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
lista_encabezados = ["HMDB0030021_v1", "HMDB0006327_v2", "HMDB0000937_v1", "HMDB0000937_v3", "HMDB0257137|DB08896_v1", "HMDB0249595|DB11791_v2", "HMDB0249595|DB11791_v4", "HMDB0249595|DB11791_v5", "HMDB0250818|DB08912_v2", "HMDB0250818|DB08912_v4", "HMDB0247641|DB16703_v2", "HMDB0247641|DB16703_v3", "HMDB0247641|DB16703_v4", "HMDB0003550|DB00146_v2", "HMDB0000900|DB00153_v3", "HMDB0248803|DB08822_v1", "HMDB0248803|DB08822_v2"]  # Reemplaza por tus encabezados

# Verificar si se proporciona el archivo de entrada en los argumentos
if len(sys.argv) != 2:
    print("Uso: ./script.py <archivo_sdf>")
    sys.exit(1)

archivo_entrada = sys.argv[1]
filtrar_sdf_por_encabezados(archivo_entrada, lista_encabezados)

