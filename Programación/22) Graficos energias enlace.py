#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 29 12:16:45 2024

@author: alonso
"""

import pandas as pd
import matplotlib.pyplot as plt
import os
import statistics
import scipy.stats as st

# Solicitar el nombre del archivo
name = input("Introduce el nombre de la proteína archivo: ")

# Inicializar una lista para los números
numbers = list(range(1, 18))  # Genera números del 1 al 17

# Leer el archivo para cada número
for num in numbers:
    file_path = f"/home/alonso/TFM/dockings/metabolites/{name}/moldinamics/{name}_Mol{num}/protein-ligand-energy.dat"
    # Verificar si el archivo existe
    if not os.path.exists(file_path):
        print(f"Error: El archivo {file_path} no existe.")
        continue  # Salta al siguiente número si el archivo no existe


    # Inicializar listas para almacenar cada serie
    vdw_energies = []
    electrostatic_energies = []
    total_energies = []

    # Leer el archivo y extraer datos
    with open(file_path, "r") as file:
        lines = file.readlines()
        for line in lines:
            if line.startswith('#') or not line.strip():
                continue
            parts = line.strip().split()
            #Obtencion de rango de valores de vdw, elect. y total
            if len(parts) == 9:  # Verifica que la línea tenga dos columnas (frame y RMSD)
                vdw = float(parts[6])
                vdw_energies.append(vdw)
                elec = float(parts[7])
                electrostatic_energies.append(elec)
                total = float(parts[8])
                total_energies.append(total)

    #Cálculo de medias e intervalos de confianza
    mean_vdw = statistics.mean(vdw_energies)
    mean_electro = statistics.mean(electrostatic_energies)
    mean_total = statistics.mean(total_energies)
    
    ic_vdw = st.t.interval(0.95, df = len(vdw_energies) - 1, 
                           loc = mean_vdw, scale = st.sem(vdw_energies))
    ic_electro = st.t.interval(0.95, df = len(vdw_energies) - 1, 
                           loc = mean_electro, scale = st.sem(vdw_energies))
    ic_total = st.t.interval(0.95, df = len(vdw_energies) - 1, 
                           loc = mean_total, scale = st.sem(vdw_energies))
    #Revision de medias e intervalos de confianza
    print(f"{mean_vdw} {ic_vdw}")
    print(f"{mean_electro} {ic_electro}")
    print(f"{mean_total} {ic_total}")


    # Convertir listas a un DataFrame para manejar las tres series
    data = pd.DataFrame({
        "Van der Waals energies": vdw_energies,
        "Electrostatic bonds energies": electrostatic_energies
    })

    # Graficar las tres progresiones de RMSD
    fig = plt.figure(figsize=(10, 6))
    ax = fig.add_subplot()

    # Etiquetas y título
    ax.boxplot([data["Van der Waals energies"], data["Electrostatic bonds energies"]])
    ax.set_xticklabels(["Van der Waals energies", "Electrostatic bonds energies"])
    plt.xlabel("Interaction types")
    plt.ylabel("Energy (kcal/mol)")
    plt.grid()

    # Guardar la gráfica como PNG
    path = os.path.dirname(file_path)
    output_file = path + "/Bond_energies.png"
    plt.savefig(output_file)
    print(f"Gráfica guardada como {output_file}")
