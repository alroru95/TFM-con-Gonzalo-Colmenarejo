#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 29 14:45:21 2024

@author: alonso
"""

import os
from rdkit import Chem
from rdkit.Chem import Draw, AllChem
 
# Solicitar el nombre del archivo
name = input("Introduce el nombre de la proteína archivo: ")

# Inicializar una lista para los números
numbers = list(range(1, 18))  # Genera números del 1 al 17

# Leer el archivo para cada número
for num in numbers:
    file_path = f"/home/alonso/TFM/dockings/metabolites/{name}/Mol_{num}.mol"
    # Verificar si el archivo existe
    if not os.path.exists(file_path):
        print(f"Error: El archivo {file_path} no existe.")
        continue  # Salta al siguiente número si el archivo no existe
    
    with open(file_path, 'r') as file:
        mol = Chem.MolFromMolBlock(file.read(), removeHs=False)
        AllChem.Compute2DCoords(mol)
        img = Draw.MolToImage(mol)
    # Guardar la gráfica como PNG
    output_file = f"{os.path.splitext(file_path)[0]}.png"
    img.save(output_file)

