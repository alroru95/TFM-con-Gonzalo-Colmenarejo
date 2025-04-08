#!/bin/bash

smina -r TFM/receptors/3l0l_protFH.pdbqt -l TFM/ligands/sdf/HC3.sdf --autobox_ligand TFM/ligands/pdbs/HC3.pdb -o TFM/dockings/ligands/3l0l_HC3.sdf --seed 0 --addH False --scoring vinardo

smina -r TFM/receptors/5m96_protFH.pdbqt -l TFM/ligands/sdf/Q6Y.sdf --autobox_ligand TFM/ligands/pdbs/Q6Y.pdb -o TFM/dockings/ligands/5m96_Q6Y.sdf --seed 0 --addH False --scoring vinardo

smina -r TFM/receptors/6q7h_protFH.pdbqt -l TFM/ligands/sdf/HL8.sdf --autobox_ligand TFM/ligands/pdbs/HL8.pdb -o TFM/dockings/ligands/6q7h_HL8.sdf --seed 0 --addH False --scoring vinardo

smina -r TFM/receptors/6t4k_protFH.pdbqt -l TFM/ligands/sdf/4F1.sdf --autobox_ligand TFM/ligands/pdbs/4F1.pdb -o TFM/dockings/ligands/6t4k_4F1.sdf --seed 0 --addH False --scoring vinardo

smina -r TFM/receptors/6w9h_protFH.pdbqt -l TFM/ligands/sdf/TKJ.sdf --autobox_ligand TFM/ligands/pdbs/TKJ.pdb -o TFM/dockings/ligands/6w9h_TKJ.sdf --seed 0 --addH False --scoring vinardo

smina -r TFM/receptors/7kxd_protFH.pdbqt -l TFM/ligands/sdf/Z7G.sdf --autobox_ligand TFM/ligands/pdbs/Z7G.pdb -o TFM/dockings/ligands/7kxd_Z7G.sdf --seed 0 --addH False --scoring vinardo
