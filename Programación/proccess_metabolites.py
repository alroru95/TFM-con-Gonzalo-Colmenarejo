#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Oct 14 11:29:22 2024

@author: alonso
"""

import os
import pandas as pd
import rdkit
from rdkit import Chem
from rdkit.Chem import inchi
import chembl_structure_pipeline as csp
from rdkit.Chem import rdMolDescriptors

def std_ligands():
    #Obtencion de archivo y creacion de dataframe
    path = "/home/alonso/TFM/metabolites/comp_sets_Review.csv"
    d = pd.read_csv(path, header=0, sep=';')

    #Seleccion columnas de interes
    d_filtrada = d[['hmdb_id','inchi']]
    d_filtrada = d_filtrada[d_filtrada['hmdb_id'].str.startswith('HMDB')]

    # Añadir ids y generar mol al dataframe    
    d_filtrada['mol'] = d_filtrada['inchi'].apply(lambda x: Chem.MolFromInchi(x))
    
    #Filtramos por numero de átomos y enlaces rotables
    n_atoms = 4
    n_rot= 10
    d_filtrada = d_filtrada[
        (d_filtrada[['hmdb_id','inchi','mol']].notna().all(axis=1)) &
        (d_filtrada['mol'].apply(lambda mol: mol.GetNumAtoms() >  n_atoms)) &
        (d_filtrada['mol'].apply(lambda mol: rdMolDescriptors.CalcNumRotatableBonds(mol) <  n_rot)) 
        ]    
    print("hecho")

    #Estandarizacion
    d_filtrada["std_mol"] = d_filtrada['mol'].apply(lambda x: csp.standardize_mol(x))
    print("hecho")
    
    #Parentización
    d_filtrada["parent_mol"] = d_filtrada["std_mol"].apply(lambda x: csp.get_parent_mol(x)[0])
    print("hecho")
    
    #Generar smiles
    d_filtrada['smiles'] = d_filtrada["parent_mol"].apply(lambda x: Chem.MolToSmiles(x))
    print("hecho")
    
    list_hmdb = list(d_filtrada['hmdb_id'])
    
    return list_hmdb

hmdb_ids = std_ligands()