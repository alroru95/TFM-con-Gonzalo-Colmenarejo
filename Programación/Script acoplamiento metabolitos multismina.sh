#!/bin/bash 


python3 multi_smina3.py -s Downloads/smina.static -r TFM/receptors/3l0l_protFH.pdbqt --autobox_ligand TFM/ligands/HC3.pdb -o TFM/dockings/3l0l_interactions.sdf -l TFM/metabolites/Variaciones_smiles_metabolitos.sdf --seed 0 --scoring vinardo --num_modes 1 --addH False

python3 multi_smina3.py -s Downloads/smina.static -r TFM/receptors/5m96_protFH.pdbqt --autobox_ligand TFM/ligands/Q6Y.pdb -o TFM/dockings/5m96_interactions.sdf -l TFM/metabolites/Variaciones_smiles_metabolitos.sdf --seed 0 --scoring vinardo --num_modes 1 --addH False

python3 multi_smina3.py -s Downloads/smina.static -r TFM/receptors/6q7h_protFH.pdbqt --autobox_ligand TFM/ligands/HL8.pdb -o TFM/dockings/6q7h_interactions.sdf -l TFM/metabolites/Variaciones_smiles_metabolitos.sdf --seed 0 --scoring vinardo --num_modes 1 --addH False

python3 multi_smina3.py -s Downloads/smina.static -r TFM/receptors/6t4k_protFH.pdbqt --autobox_ligand TFM/ligands/4F1.pdb -o TFM/dockings/6t4k_interactions.sdf -l TFM/metabolites/Variaciones_smiles_metabolitos.sdf --seed 0 --scoring vinardo --num_modes 1 --addH False

python3 multi_smina3.py -s Downloads/smina.static -r TFM/receptors/6w9h_protFH.pdbqt --autobox_ligand TFM/ligands/TKJ.pdb -o TFM/dockings/6w9h_interactions.sdf -l TFM/metabolites/Variaciones_smiles_metabolitos.sdf --seed 0 --scoring vinardo --num_modes 1 --addH False

python3 multi_smina3.py -s Downloads/smina.static -r TFM/receptors/7kxd_protFH.pdbqt --autobox_ligand TFM/ligands/Z7G.pdb -o TFM/dockings/7kxd_interactions.sdf -l TFM/metabolites/Variaciones_smiles_metabolitos.sdf --seed 0 --scoring vinardo --num_modes 1 --addH False
