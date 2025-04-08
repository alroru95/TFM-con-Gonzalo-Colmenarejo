# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

from rdkit import Chem
from rdkit.Chem.Draw import IPythonConsole
from rdkit.Chem import Draw, AllChem 
from rdkit.Chem import Descriptors
import os
import re

identifier = input("Nombre del id: ")
path = f"/home/alonso/TFM/dockings/metabolites/{identifier}"
list_files = os.listdir(path)
pattern = re.compile(r"Mol_[0-9]+\.mol")
files = []
for i in list_files:
    if pattern.match(i):
        files.append(os.path.join(path, i))

dict_charges = {}
for file in files:
    with open(file) as f:
        mol = Chem.MolFromMolBlock(f.read(),removeHs=False)
        mol = Chem.AddHs(mol, addCoords=True)
        charge = Chem.GetFormalCharge(mol)
        name = os.path.basename(file).split('.')[0]
        Mol = os.path.basename(file).split('_')[0]
        number = name.split('_')[1]
        dict_charges[name] = charge   
        Chem.MolToMolFile(mol, f'{path}/{Mol}{number}.mol')

