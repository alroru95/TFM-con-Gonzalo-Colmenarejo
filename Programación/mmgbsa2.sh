#!/bin/bash

cd TFM/dockings/metabolites/3l0l/

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol1/FINAL_RESULTS_MMGBSA.dat -sp moldinamics/3l0l_Mol1/3l0l_Mol1_solv.prmtop -cp mol2/Mol1/3l0l_Mol1.prmtop -rp 3l0l.prmtop -lp mol2/Mol1/Mol1.prmtop -y moldinamics/3l0l_Mol1/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol2/FINAL_RESULTS_MMGBSA_2.dat -sp moldinamics/3l0l_Mol2/3l0l_Mol2_solv.prmtop -cp mol2/Mol2/3l0l_Mol2.prmtop -rp 3l0l.prmtop -lp mol2/Mol2/Mol2.prmtop -y moldinamics/3l0l_Mol2/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol3/FINAL_RESULTS_MMGBSA_3.dat -sp moldinamics/3l0l_Mol3/3l0l_Mol3_solv.prmtop -cp mol2/Mol3/3l0l_Mol3.prmtop -rp 3l0l.prmtop -lp mol2/Mol3/Mol3.prmtop -y moldinamics/3l0l_Mol3/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol4/FINAL_RESULTS_MMGBSA_4.dat -sp moldinamics/3l0l_Mol4/3l0l_Mol4_solv.prmtop -cp mol2/Mol4/3l0l_Mol4.prmtop -rp 3l0l.prmtop -lp mol2/Mol4/Mol4.prmtop -y moldinamics/3l0l_Mol4/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol5/FINAL_RESULTS_MMGBSA_5.dat -sp moldinamics/3l0l_Mol5/3l0l_Mol5_solv.prmtop -cp mol2/Mol5/3l0l_Mol5.prmtop -rp 3l0l.prmtop -lp mol2/Mol5/Mol5.prmtop -y moldinamics/3l0l_Mol5/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol6/FINAL_RESULTS_MMGBSA_6.dat -sp moldinamics/3l0l_Mol6/3l0l_Mol6_solv.prmtop -cp mol2/Mol6/3l0l_Mol6.prmtop -rp 3l0l.prmtop -lp mol2/Mol6/Mol6.prmtop -y moldinamics/3l0l_Mol6/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol7/FINAL_RESULTS_MMGBSA_7.dat -sp moldinamics/3l0l_Mol7/3l0l_Mol7_solv.prmtop -cp mol2/Mol7/3l0l_Mol7.prmtop -rp 3l0l.prmtop -lp mol2/Mol7/Mol7.prmtop -y moldinamics/3l0l_Mol7/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol8/FINAL_RESULTS_MMGBSA_8.dat -sp moldinamics/3l0l_Mol8/3l0l_Mol8_solv.prmtop -cp mol2/Mol8/3l0l_Mol8.prmtop -rp 3l0l.prmtop -lp mol2/Mol8/Mol8.prmtop -y moldinamics/3l0l_Mol8/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol9/FINAL_RESULTS_MMGBSA_9.dat -sp moldinamics/3l0l_Mol9/3l0l_Mol9_solv.prmtop -cp mol2/Mol9/3l0l_Mol9.prmtop -rp 3l0l.prmtop -lp mol2/Mol9/Mol9.prmtop -y moldinamics/3l0l_Mol9/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol10/FINAL_RESULTS_MMGBSA_10.dat -sp moldinamics/3l0l_Mol10/3l0l_Mol10_solv.prmtop -cp mol2/Mol10/3l0l_Mol10.prmtop -rp 3l0l.prmtop -lp mol2/Mol10/Mol10.prmtop -y moldinamics/3l0l_Mol10/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol11/FINAL_RESULTS_MMGBSA_11.dat -sp moldinamics/3l0l_Mol11/3l0l_Mol11_solv.prmtop -cp mol2/Mol11/3l0l_Mol11.prmtop -rp 3l0l.prmtop -lp mol2/Mol11/Mol11.prmtop -y moldinamics/3l0l_Mol11/10.prod_4.traj


mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol12/FINAL_RESULTS_MMGBSA_12.dat -sp moldinamics/3l0l_Mol12/3l0l_Mol12_solv.prmtop -cp mol2/Mol12/3l0l_Mol12.prmtop -rp 3l0l.prmtop -lp mol2/Mol12/Mol12.prmtop -y moldinamics/3l0l_Mol12/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol13/FINAL_RESULTS_MMGBSA_13.dat -sp moldinamics/3l0l_Mol13/3l0l_Mol13_solv.prmtop -cp mol2/Mol13/3l0l_Mol13.prmtop -rp 3l0l.prmtop -lp mol2/Mol13/Mol13.prmtop -y moldinamics/3l0l_Mol13/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol14/FINAL_RESULTS_MMGBSA_14.dat -sp moldinamics/3l0l_Mol14/3l0l_Mol14_solv.prmtop -cp mol2/Mol14/3l0l_Mol14.prmtop -rp 3l0l.prmtop -lp mol2/Mol14/Mol14.prmtop -y moldinamics/3l0l_Mol14/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol15/FINAL_RESULTS_MMGBSA_15.dat -sp moldinamics/3l0l_Mol15/3l0l_Mol15_solv.prmtop -cp mol2/Mol15/3l0l_Mol15.prmtop -rp 3l0l.prmtop -lp mol2/Mol15/Mol15.prmtop -y moldinamics/3l0l_Mol15/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol16/FINAL_RESULTS_MMGBSA_16.dat -sp moldinamics/3l0l_Mol16/3l0l_Mol16_solv.prmtop -cp mol2/Mol16/3l0l_Mol16.prmtop -rp 3l0l.prmtop -lp mol2/Mol16/Mol16.prmtop -y moldinamics/3l0l_Mol16/10.prod_4.traj

mpirun -np 12 MMPBSA.py.MPI -O -i mol2/mmgbsa.in -o moldinamics/3l0l_Mol17/FINAL_RESULTS_MMGBSA_17.dat -sp moldinamics/3l0l_Mol17/3l0l_Mol17_solv.prmtop -cp mol2/Mol17/3l0l_Mol17.prmtop -rp 3l0l.prmtop -lp mol2/Mol17/Mol17.prmtop -y moldinamics/3l0l_Mol17/10.prod_4.traj