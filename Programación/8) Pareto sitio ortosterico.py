import numpy as np
import matplotlib.pyplot as plt
import oapackage

# Ruta del archivo SDF para ortostérico
file1_path_ortho = "/home/alonso/TFM/dockings/metabolites/3l0l_interactions.sdf"
file2_path_ortho = "/home/alonso/TFM/dockings/metabolites/6w9h_interactions.sdf"
file3_path_ortho = "/home/alonso/TFM/dockings/metabolites/7kxd_interactions.sdf"


# Función para leer el archivo y llenar el diccionario de energía
def read_energy_file(file_path):
    # Crear diccionario para almacenar valores de energía por código HMDB
    energy_dict = {}
    with open(file_path, 'r') as f: 
        lines = f.readlines()

    current_hmdb_code = None  # Variable para rastrear el código HMDB actual

    for line in lines:
        if 'HMDB' in line:
            current_hmdb_code = line.split()[0]  # Ajusta esto según la estructura de tu archivo
            if current_hmdb_code not in energy_dict:
                energy_dict[current_hmdb_code] = []  # Inicializa la lista para el código HMDB
        elif current_hmdb_code is not None:
            try:
                # Ajusta según el formato de tu archivo para ortostérico
                energy_value = float(line.strip())  
                energy_dict[current_hmdb_code].append(energy_value)  # Agrega valor
            except ValueError:
                pass  # Ignora líneas que no se pueden convertir a float
    return energy_dict	                
	

# Leer los archivos de energías ortostéricas
energy_1 = read_energy_file(file1_path_ortho)
energy_2 = read_energy_file(file2_path_ortho)
energy_3 = read_energy_file(file3_path_ortho)

# Crear puntos de datos a partir de las energías promedio de los diccionarios
datapoints_1 = np.array([[energy_1[key] for key in energy_1.keys()]])
datapoints_2 = np.array([[energy_2[key] for key in energy_2.keys()]])
datapoints_3 = np.array([[energy_3[key] for key in energy_3.keys()]])

# Crear objeto de Pareto utilizando oapackage
pareto = oapackage.ParetoDoubleLong()

# Agregar puntos de datos al objeto de Pareto
for i in range(datapoints_1.shape[1]):
    point = oapackage.doubleVector(list((float(-datapoints_1[0, i]), float(-datapoints_2[0, i]), float(-datapoints_3[0, i]))))
    pareto.addvalue(point, i)

# Mostrar el frente de Pareto
pareto.show(verbose=1)

# Obtener los índices de los puntos óptimos
optimal_indices = pareto.allindices()

# buscamos mejores codigos hmdb
def best_hmdb(dict):
	list_codes = []
	for i in optimal_indices:
		key = list(dict.keys())[i]
		list_codes.append(key)
	return list_codes

best_codes_1 = best_hmdb(energy_1)
best_codes_2 = best_hmdb(energy_2)
best_codes_3 = best_hmdb(energy_3)

# Filtrar los puntos óptimos
optimal_datapoints_1 = datapoints_1[:, optimal_indices]
optimal_datapoints_2 = datapoints_2[:, optimal_indices]
optimal_datapoints_3 = datapoints_3[:, optimal_indices]

# Archivos de salida
with open('best_3l0l_interactions.txt', 'w') as f:
    for code, optimal in zip(best_codes_1, optimal_datapoints_1[0, :]):
        f.write(f"{code}\t{optimal}\n")
        
with open('best_6w9h_interactions.txt', 'w') as f:
    for code, optimal in zip(best_codes_2, optimal_datapoints_2[0, :]):
        f.write(f"{code}\t{optimal}\n")
        
with open('best_7kxd_interactions.txt', 'w') as f:
    for code, optimal in zip(best_codes_3, optimal_datapoints_3[0, :]):
        f.write(f"{code}\t{optimal}\n")

