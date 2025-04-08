#!/bin/bash 

python3 multi_smina3.py -s Downloads/smina.static -r TFM/receptors/3l0l_protFH.pdbqt --autobox_ligand TFM/ligands/HC3.pdb -o TFM/dockings/3l0l_interactions_decoys.sdf -l TFM/decoys/HC3/decoys_HC3.sdf --seed 0 --scoring vinardo --num_modes 1 --addH False

python3 multi_smina3.py -s Downloads/smina.static -r TFM/receptors/5m96_protFH.pdbqt --autobox_ligand TFM/ligands/Q6Y.pdb -o TFM/dockings/5m96_interactions_decoys_1.sdf -l TFM/decoys/Q6Y/decoys_Q6Y_1.sdf --seed 0 --scoring vinardo --num_modes 1 --addH False

python3 multi_smina3.py -s Downloads/smina.static -r TFM/receptors/5m96_protFH.pdbqt --autobox_ligand TFM/ligands/Q6Y.pdb -o TFM/dockings/5m96_interactions_decoys_2.sdf -l TFM/decoys/Q6Y/decoys_Q6Y_2.sdf --seed 0 --scoring vinardo --num_modes 1 --addH False

python3 multi_smina3.py -s Downloads/smina.static -r TFM/receptors/6q7h_protFH.pdbqt --autobox_ligand TFM/ligands/HL8.pdb -o TFM/dockings/6q7h_interactions_decoys.sdf -l TFM/decoys/HL8/decoys_HL8.sdf --seed 0 --scoring vinardo --num_modes 1 --addH False

python3 multi_smina3.py -s Downloads/smina.static -r TFM/receptors/6t4k_protFH.pdbqt --autobox_ligand TFM/ligands/4F1.pdb -o TFM/dockings/6t4k_interactions_decoys.sdf -l TFM/decoys/4F1/decoys_4F1.sdf --seed 0 --scoring vinardo --num_modes 1 --addH False

python3 multi_smina3.py -s Downloads/smina.static -r TFM/receptors/6w9h_protFH.pdbqt --autobox_ligand TFM/ligands/TJK.pdb -o TFM/dockings/6w9h_interactions_decoys.sdf -l TFM/decoys/TJK/decoys_TJK.sdf --seed 0 --scoring vinardo --num_modes 1 --addH False

python3 multi_smina3.py -s Downloads/smina.static -r TFM/receptors/7kxd_protFH.pdbqt --autobox_ligand TFM/ligands/Z7G.pdb -o TFM/dockings/7kxd_interactions_decoys.sdf -l TFM/decoys/Z7G/decoys_Z7G.sdf --seed 0 --scoring vinardo --num_modes 1 --addH False
