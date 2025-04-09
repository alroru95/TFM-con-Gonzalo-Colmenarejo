#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 29 11:11:05 2024

@author: alonso
"""
import pandas as pd
import matplotlib.pyplot as plt
import os

# Solicitar el nombre del archivo
name = input("Introduce el nombre de la proteína archivo: ")

# Inicializar una lista para los números
numbers = list(range(1, 18))  # Genera números del 1 al 17

# Leer el archivo para cada número
for num in numbers:
    file_path = f"/home/alonso/TFM/dockings/metabolites/{name}/moldinamics/{name}_Mol{num}/rmsd.agr"
    ligand_path = f"/home/alonso/TFM/dockings/metabolites/{name}/moldinamics/{name}_Mol{num}/Mol{num}.mol"
    # Verificar si el archivo existe
    if not os.path.exists(file_path):
        print(f"Error: El archivo {file_path} no existe.")
        continue  # Salta al siguiente número si el archivo no existe
        
    
    # Verificar si el archivo de ligando existe
    if not os.path.exists(ligand_path):
        print(f"Error: El archivo {ligand_path} no existe.")
        continue  # Salta al siguiente número si el archivo no existe

    with open(ligand_path, 'r') as file:
        ligand_name= file.readline().strip()

    # Inicializar listas para almacenar cada serie
    frames = []
    rmsd_first = []
    rmsd_last = []
    rmsd_autodock = []

    # Leer el archivo y extraer datos
    with open(file_path, "r") as file:
        lines = file.readlines()
        series = None
        
        for line in lines:
            if "@  s0 legend" in line:
                series = "First"
            elif "@  s1 legend" in line:
                series = "Last"
            elif "@  s2 legend" in line:
                series = "AutoDock"
            
            # Saltar líneas de configuración y procesar solo datos
            if not line.startswith("@") and series is not None:
                parts = line.strip().split()
                if len(parts) == 2:  # Verifica que la línea tenga dos columnas (frame y RMSD)
                    frame = float(parts[0])
                    rmsd_value = float(parts[1])

                    if series == "First":
                        frames.append(frame)
                        rmsd_first.append(rmsd_value)
                    elif series == "Last":
                        rmsd_last.append(rmsd_value)
                    elif series == "AutoDock":
                        rmsd_autodock.append(rmsd_value)

    # Convertir listas a un DataFrame para manejar las tres series
    data = pd.DataFrame({
        "Frame": frames,
        "RMSD_First": rmsd_first,
        "RMSD_Last": rmsd_last,
        "RMSD_AutoDock": rmsd_autodock
    })

    # Graficar las tres progresiones de RMSD
    plt.figure(figsize=(10, 6))
    plt.plot(data["Frame"], data["RMSD_First"], label="RMSD vs First Frame")
    plt.plot(data["Frame"], data["RMSD_Last"], label="RMSD vs Last Frame")
    plt.plot(data["Frame"], data["RMSD_AutoDock"], label="RMSD vs Reference (AutoDock)")

    # Etiquetas y título
    plt.xlabel("Frame")
    plt.ylabel("RMSD (Å)")
    plt.title(f"RMSD Progression for {name}-{ligand_name} complex over Time")
    plt.legend()
    plt.grid()

    # Guardar la gráfica como PNG
    output_file = os.path.splitext(file_path)[0] + ".png"
    plt.savefig(output_file)
    print(f"Gráfica guardada como {output_file}")
