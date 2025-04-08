# Importar módulos
import numpy as np
from matplotlib import pyplot as plt
from sklearn.metrics import precision_recall_curve
import math

Name = input("Insert type of pocket: ")
decoys_sdf = f"/home/alonso/TFM/dockings/decoys/{Name}_interaction_decoys.sdf"
ligands_sdf = f"/home/alonso/TFM/dockings/ligands/{Name}_interaction_ligands.sdf"
title = Name 

# Extraer energías del archivo de decoys
dec_energies = []
with open(decoys_sdf, 'r') as f:
    d_lines = f.readlines()
    for i, line in enumerate(d_lines):
        if '> <minimizedAffinity>' in line:
            try:
                # Tomar la línea siguiente que contiene la energía
                dec_energies.append(float(d_lines[i + 1].strip()))
            except (IndexError, ValueError):
                print(f"Error al leer la energía en la línea {i + 1}")

# Extraer energías del archivo de ligandos
lig_energies = []
with open(ligands_sdf, 'r') as f:
    l_lines = f.readlines()
    for i, line in enumerate(l_lines):
        if '> <minimizedAffinity>' in line:
            try:
                # Tomar la línea siguiente que contiene la energía
                lig_energies.append(float(l_lines[i + 1].strip()))
            except (IndexError, ValueError):
                print(f"Error al leer la energía en la línea {i + 1}")

# Mínima energía 
min_energy = float(np.min(lig_energies))

# Normalización 
inv_lig_energies = [float(i)*-1 for i in lig_energies]
inv_dec_energies = [float(i)*-1 for i in dec_energies]
Norm_dec_energy = [float(i)/min_energy for i in dec_energies]

# Crear etiquetas para metabolitos (1) y decoys (0)

#sin normalizar
labels = [1] * len(inv_lig_energies) + [0] * len(inv_dec_energies)
energies = inv_lig_energies + inv_dec_energies

#normalizados
norm_labels = [1] * len(inv_lig_energies) + [0] * len(Norm_dec_energy)
norm_energies = inv_lig_energies + Norm_dec_energy
 
#Calculamos precision recall curve  
#sin normalizar              
precision, recall, thresholds = precision_recall_curve(labels, energies)

#normalizado
norm_precision, norm_recall, thresholds = precision_recall_curve(norm_labels, norm_energies)

figure, axis = plt.subplots(1,2, figsize=(10,8))

axis[0].plot(recall, precision, color = 'orange', label = 'Precision-Recall curve')
axis[0].plot([0, 1] , [0.5, 0.5], linestyle = '--', color='black', label = 'No skill')
axis[0].set_xlabel("Recall")
axis[0].set_ylabel("Precision")
axis[0].legend()
axis[0].set_title("Not normalized")

axis[1].plot(norm_recall, norm_precision, color = 'orange', label = 'Precision-Recall curve')
axis[1].plot([0, 1] , [0.5, 0.5], linestyle = '--', color='black', label = 'No skill')
axis[1].set_xlabel("Recall")
axis[1].set_ylabel("Precision")
axis[1].legend()
axis[1].set_title("Normalized")

figure.suptitle(title, fontsize=20)
figure.savefig(f"{title}_precision recall.png")

