from rdkit import Chem

# Entrada de rutas para los archivos .picked y SDF
path_picked = input("Path del archivo .picked: ")
path_sdf = input("Path del archivo SDF: ")

# Leer el archivo .picked
with open(path_picked, 'r') as f:
    lines = f.readlines()

# Saltar la primera línea si es un encabezado
lines = lines[1:]

smiles = []

# Extraer los SMILES, cortando la línea al primer espacio en blanco
for line in lines:
    smile = ""
    for c in line:
        if not c.isspace():
            smile += c
        else:
            break
    smiles.append(smile)

# Convertir los SMILES a objetos Mol
mols = []
for smile in smiles:
    mol = Chem.MolFromSmiles(smile.strip())  # Convertir SMILES a Mol y eliminar espacios en blanco
    if mol:  # Verificar si la conversión fue exitosa
        mols.append(mol)
    else:
        print(f"Error al convertir el SMILES: {smile}")

# Escribir las moléculas en formato SDF
with Chem.SDWriter(path_sdf) as writer:
    for mol in mols:
        writer.write(mol)

print(f"Conversión completada. El archivo SDF está en: {path_sdf}")

 
