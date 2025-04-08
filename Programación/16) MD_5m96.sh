#!/bin/bash
cd TFM/dockings/metabolites/5m96
mkdir -p mol2
cd mol2
mkdir -p Mol1
mkdir -p Mol2
mkdir -p Mol3
mkdir -p Mol4
mkdir -p Mol5
mkdir -p Mol6
mkdir -p Mol7
mkdir -p Mol8
mkdir -p Mol9
mkdir -p Mol10
mkdir -p Mol11
mkdir -p Mol12
mkdir -p Mol13
mkdir -p Mol14
mkdir -p Mol15
mkdir -p Mol16
mkdir -p Mol17
cd ..
antechamber -i Mol1.pdb -fi pdb -o mol2/Mol1/Mol1.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc -2 -rn MOL
antechamber -i Mol2.pdb -fi pdb -o mol2/Mol2/Mol2.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc -1 -rn MOL
antechamber -i Mol3.pdb -fi pdb -o mol2/Mol3/Mol3.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc 0 -rn MOL
antechamber -i Mol4.pdb -fi pdb -o mol2/Mol4/Mol4.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc -1 -rn MOL
antechamber -i Mol5.pdb -fi pdb -o mol2/Mol5/Mol5.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc -1 -rn MOL
antechamber -i Mol6.pdb -fi pdb -o mol2/Mol6/Mol6.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc -1 -rn MOL
antechamber -i Mol7.pdb -fi pdb -o mol2/Mol7/Mol7.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc 1 -rn MOL
antechamber -i Mol8.pdb -fi pdb -o mol2/Mol8/Mol8.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc -3 -rn MOL
antechamber -i Mol9.pdb -fi pdb -o mol2/Mol9/Mol9.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc -3 -rn MOL
antechamber -i Mol10.pdb -fi pdb -o mol2/Mol10/Mol10.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc 1 -rn MOL
antechamber -i Mol11.pdb -fi pdb -o mol2/Mol11/Mol11.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc 3 -rn MOL
antechamber -i Mol12.pdb -fi pdb -o mol2/Mol12/Mol12.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc 1 -rn MOL
antechamber -i Mol13.pdb -fi pdb -o mol2/Mol13/Mol13.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc -2 -rn MOL
antechamber -i Mol14.pdb -fi pdb -o mol2/Mol14/Mol14.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc 1 -rn MOL
antechamber -i Mol15.pdb -fi pdb -o mol2/Mol15/Mol15.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc 4 -rn MOL
antechamber -i Mol16.pdb -fi pdb -o mol2/Mol16/Mol16.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc 3 -rn MOL
antechamber -i Mol17.pdb -fi pdb -o mol2/Mol17/Mol17.mol2 -fo mol2 -c bcc -at gaff2 -s 2 -nc 0 -rn MOL

pdb4amber 5m96.pdb > 5m96.amber.pdb


cd mol2/
parmchk2 -i Mol1/Mol1.mol2 -f mol2 -o Mol1/Mol1.frcmod
parmchk2 -i Mol2/Mol2.mol2 -f mol2 -o Mol2/Mol2.frcmod
parmchk2 -i Mol3/Mol3.mol2 -f mol2 -o Mol3/Mol3.frcmod
parmchk2 -i Mol4/Mol4.mol2 -f mol2 -o Mol4/Mol4.frcmod
parmchk2 -i Mol5/Mol5.mol2 -f mol2 -o Mol5/Mol5.frcmod
parmchk2 -i Mol6/Mol6.mol2 -f mol2 -o Mol6/Mol6.frcmod
parmchk2 -i Mol7/Mol7.mol2 -f mol2 -o Mol7/Mol7.frcmod
parmchk2 -i Mol8/Mol8.mol2 -f mol2 -o Mol8/Mol8.frcmod
parmchk2 -i Mol9/Mol9.mol2 -f mol2 -o Mol9/Mol9.frcmod
parmchk2 -i Mol10/Mol10.mol2 -f mol2 -o Mol10/Mol10.frcmod
parmchk2 -i Mol11/Mol11.mol2 -f mol2 -o Mol11/Mol11.frcmod
parmchk2 -i Mol12/Mol12.mol2 -f mol2 -o Mol12/Mol12.frcmod
parmchk2 -i Mol13/Mol13.mol2 -f mol2 -o Mol13/Mol13.frcmod
parmchk2 -i Mol14/Mol14.mol2 -f mol2 -o Mol14/Mol14.frcmod
parmchk2 -i Mol15/Mol15.mol2 -f mol2 -o Mol15/Mol15.frcmod
parmchk2 -i Mol16/Mol16.mol2 -f mol2 -o Mol16/Mol16.frcmod
parmchk2 -i Mol17/Mol17.mol2 -f mol2 -o Mol17/Mol17.frcmod

cd ..

tleap -f tleap1.in
tleap -f tleap2.in
tleap -f tleap3.in
tleap -f tleap4.in
tleap -f tleap5.in
tleap -f tleap6.in
tleap -f tleap7.in
tleap -f tleap8.in
tleap -f tleap9.in
tleap -f tleap10.in
tleap -f tleap11.in
tleap -f tleap12.in
tleap -f tleap13.in
tleap -f tleap14.in
tleap -f tleap15.in
tleap -f tleap16.in
tleap -f tleap17.in
tleap -f tleap5m96.in

mkdir -p moldinamics
mkdir -p moldinamics/5m96_Mol1
mkdir -p moldinamics/5m96_Mol2
mkdir -p moldinamics/5m96_Mol3
mkdir -p moldinamics/5m96_Mol4
mkdir -p moldinamics/5m96_Mol5
mkdir -p moldinamics/5m96_Mol6
mkdir -p moldinamics/5m96_Mol7
mkdir -p moldinamics/5m96_Mol8
mkdir -p moldinamics/5m96_Mol9
mkdir -p moldinamics/5m96_Mol10
mkdir -p moldinamics/5m96_Mol11
mkdir -p moldinamics/5m96_Mol12
mkdir -p moldinamics/5m96_Mol13
mkdir -p moldinamics/5m96_Mol14
mkdir -p moldinamics/5m96_Mol15
mkdir -p moldinamics/5m96_Mol16
mkdir -p moldinamics/5m96_Mol17


##MD molecula 1
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol1/01.min.mdout -p Mol1/5m96_Mol1_solv.prmtop -c Mol1/5m96_Mol1_solv.inpcrd -r Mol1/01.min.rst7 -inf Mol1/01.min.info -ref Mol1/5m96_Mol1_solv.inpcrd -x Mol1/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol1/02.equil.mdout -p Mol1/5m96_Mol1_solv.prmtop -c Mol1/01.min.rst7 -r Mol1/02.equil.rst7 -inf Mol1/02.equil.info -ref Mol1/01.min.rst7 -x Mol1/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol1/03.min.mdout -p Mol1/5m96_Mol1_solv.prmtop -c Mol1/02.equil.rst7 -r Mol1/03.min.rst7 -inf Mol1/03.min.info -ref Mol1/02.equil.rst7 -x Mol1/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol1/04.min.mdout -p Mol1/5m96_Mol1_solv.prmtop -c Mol1/03.min.rst7 -r Mol1/04.min.rst7 -inf Mol1/04.min.info -ref Mol1/03.min.rst7 -x Mol1/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol1/05.min.mdout -p Mol1/5m96_Mol1_solv.prmtop -c Mol1/04.min.rst7 -r Mol1/05.min.rst7 -inf Mol1/05.min.info -ref Mol1/04.min.rst7 -x Mol1/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol1/06.equil.mdout -p Mol1/5m96_Mol1_solv.prmtop -c Mol1/05.min.rst7 -r Mol1/06.equil.rst7 -inf Mol1/06.equil.info -ref Mol1/05.min.rst7 -x Mol1/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol1/07.equil.mdout -p Mol1/5m96_Mol1_solv.prmtop -c Mol1/06.equil.rst7 -r Mol1/07.equil.rst7 -inf Mol1/07.equil.info -ref Mol1/06.equil.rst7 -x Mol1/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol1/08.equil.mdout -p Mol1/5m96_Mol1_solv.prmtop -c Mol1/07.equil.rst7 -r Mol1/08.equil.rst7 -inf Mol1/08.equil.info -ref Mol1/07.equil.rst7 -x Mol1/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol1/09.equil.mdout -p Mol1/5m96_Mol1_solv.prmtop -c Mol1/08.equil.rst7 -r Mol1/09.equil.rst7 -inf Mol1/09.equil.info -ref Mol1/08.equil.rst7 -x Mol1/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol1/10.prod_1.mdout -p Mol1/5m96_Mol1_solv.prmtop -c Mol1/09.equil.rst7 -r Mol1/10.prod_1.rst7 -inf Mol1/10.prod_1.info -ref Mol1/09.equil.rst7 -x Mol1/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol1/10.prod_2.mdout -p Mol1/5m96_Mol1_solv.prmtop -c Mol1/10.prod_1.rst7 -r Mol1/10.prod_2.rst7 -inf Mol1/10.prod_2.info -ref Mol1/10.prod_1.rst7 -x Mol1/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol1/10.prod_3.mdout -p Mol1/5m96_Mol1_solv.prmtop -c Mol1/10.prod_2.rst7 -r Mol1/10.prod_3.rst7 -inf Mol1/10.prod_3.info -ref Mol1/10.prod_2.rst7 -x Mol1/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol1/10.prod_4.mdout -p Mol1/5m96_Mol1_solv.prmtop -c Mol1/10.prod_3.rst7 -r Mol1/10.prod_4.rst7 -inf Mol1/10.prod_4.info -ref Mol1/10.prod_3.rst7 -x Mol1/10.prod_4.traj

cd ..


##MD molecula 2
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol2/01.min.mdout -p Mol2/5m96_Mol2_solv.prmtop -c Mol2/5m96_Mol2_solv.inpcrd -r Mol2/01.min.rst7 -inf Mol2/01.min.info -ref Mol2/5m96_Mol2_solv.inpcrd -x Mol2/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol2/02.equil.mdout -p Mol2/5m96_Mol2_solv.prmtop -c Mol2/01.min.rst7 -r Mol2/02.equil.rst7 -inf Mol2/02.equil.info -ref Mol2/01.min.rst7 -x Mol2/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol2/03.min.mdout -p Mol2/5m96_Mol2_solv.prmtop -c Mol2/02.equil.rst7 -r Mol2/03.min.rst7 -inf Mol2/03.min.info -ref Mol2/02.equil.rst7 -x Mol2/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol2/04.min.mdout -p Mol2/5m96_Mol2_solv.prmtop -c Mol2/03.min.rst7 -r Mol2/04.min.rst7 -inf Mol2/04.min.info -ref Mol2/03.min.rst7 -x Mol2/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol2/05.min.mdout -p Mol2/5m96_Mol2_solv.prmtop -c Mol2/04.min.rst7 -r Mol2/05.min.rst7 -inf Mol2/05.min.info -ref Mol2/04.min.rst7 -x Mol2/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol2/06.equil.mdout -p Mol2/5m96_Mol2_solv.prmtop -c Mol2/05.min.rst7 -r Mol2/06.equil.rst7 -inf Mol2/06.equil.info -ref Mol2/05.min.rst7 -x Mol2/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol2/07.equil.mdout -p Mol2/5m96_Mol2_solv.prmtop -c Mol2/06.equil.rst7 -r Mol2/07.equil.rst7 -inf Mol2/07.equil.info -ref Mol2/06.equil.rst7 -x Mol2/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol2/08.equil.mdout -p Mol2/5m96_Mol2_solv.prmtop -c Mol2/07.equil.rst7 -r Mol2/08.equil.rst7 -inf Mol2/08.equil.info -ref Mol2/07.equil.rst7 -x Mol2/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol2/09.equil.mdout -p Mol2/5m96_Mol2_solv.prmtop -c Mol2/08.equil.rst7 -r Mol2/09.equil.rst7 -inf Mol2/09.equil.info -ref Mol2/08.equil.rst7 -x Mol2/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol2/10.prod_1.mdout -p Mol2/5m96_Mol2_solv.prmtop -c Mol2/09.equil.rst7 -r Mol2/10.prod_1.rst7 -inf Mol2/10.prod_1.info -ref Mol2/09.equil.rst7 -x Mol2/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol2/10.prod_2.mdout -p Mol2/5m96_Mol2_solv.prmtop -c Mol2/10.prod_1.rst7 -r Mol2/10.prod_2.rst7 -inf Mol2/10.prod_2.info -ref Mol2/10.prod_1.rst7 -x Mol2/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol2/10.prod_3.mdout -p Mol2/5m96_Mol2_solv.prmtop -c Mol2/10.prod_2.rst7 -r Mol2/10.prod_3.rst7 -inf Mol2/10.prod_3.info -ref Mol2/10.prod_2.rst7 -x Mol2/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol2/10.prod_4.mdout -p Mol2/5m96_Mol2_solv.prmtop -c Mol2/10.prod_3.rst7 -r Mol2/10.prod_4.rst7 -inf Mol2/10.prod_4.info -ref Mol2/10.prod_3.rst7 -x Mol2/10.prod_4.traj

cd ..


##MD molecula 3
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol3/01.min.mdout -p Mol3/5m96_Mol3_solv.prmtop -c Mol3/5m96_Mol3_solv.inpcrd -r Mol3/01.min.rst7 -inf Mol3/01.min.info -ref Mol3/5m96_Mol3_solv.inpcrd -x Mol3/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol3/02.equil.mdout -p Mol3/5m96_Mol3_solv.prmtop -c Mol3/01.min.rst7 -r Mol3/02.equil.rst7 -inf Mol3/02.equil.info -ref Mol3/01.min.rst7 -x Mol3/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol3/03.min.mdout -p Mol3/5m96_Mol3_solv.prmtop -c Mol3/02.equil.rst7 -r Mol3/03.min.rst7 -inf Mol3/03.min.info -ref Mol3/02.equil.rst7 -x Mol3/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol3/04.min.mdout -p Mol3/5m96_Mol3_solv.prmtop -c Mol3/03.min.rst7 -r Mol3/04.min.rst7 -inf Mol3/04.min.info -ref Mol3/03.min.rst7 -x Mol3/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol3/05.min.mdout -p Mol3/5m96_Mol3_solv.prmtop -c Mol3/04.min.rst7 -r Mol3/05.min.rst7 -inf Mol3/05.min.info -ref Mol3/04.min.rst7 -x Mol3/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol3/06.equil.mdout -p Mol3/5m96_Mol3_solv.prmtop -c Mol3/05.min.rst7 -r Mol3/06.equil.rst7 -inf Mol3/06.equil.info -ref Mol3/05.min.rst7 -x Mol3/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol3/07.equil.mdout -p Mol3/5m96_Mol3_solv.prmtop -c Mol3/06.equil.rst7 -r Mol3/07.equil.rst7 -inf Mol3/07.equil.info -ref Mol3/06.equil.rst7 -x Mol3/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol3/08.equil.mdout -p Mol3/5m96_Mol3_solv.prmtop -c Mol3/07.equil.rst7 -r Mol3/08.equil.rst7 -inf Mol3/08.equil.info -ref Mol3/07.equil.rst7 -x Mol3/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol3/09.equil.mdout -p Mol3/5m96_Mol3_solv.prmtop -c Mol3/08.equil.rst7 -r Mol3/09.equil.rst7 -inf Mol3/09.equil.info -ref Mol3/08.equil.rst7 -x Mol3/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol3/10.prod_1.mdout -p Mol3/5m96_Mol3_solv.prmtop -c Mol3/09.equil.rst7 -r Mol3/10.prod_1.rst7 -inf Mol3/10.prod_1.info -ref Mol3/09.equil.rst7 -x Mol3/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol3/10.prod_2.mdout -p Mol3/5m96_Mol3_solv.prmtop -c Mol3/10.prod_1.rst7 -r Mol3/10.prod_2.rst7 -inf Mol3/10.prod_2.info -ref Mol3/10.prod_1.rst7 -x Mol3/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol3/10.prod_3.mdout -p Mol3/5m96_Mol3_solv.prmtop -c Mol3/10.prod_2.rst7 -r Mol3/10.prod_3.rst7 -inf Mol3/10.prod_3.info -ref Mol3/10.prod_2.rst7 -x Mol3/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol3/10.prod_4.mdout -p Mol3/5m96_Mol3_solv.prmtop -c Mol3/10.prod_3.rst7 -r Mol3/10.prod_4.rst7 -inf Mol3/10.prod_4.info -ref Mol3/10.prod_3.rst7 -x Mol3/10.prod_4.traj

cd ..


##MD molecula 4
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol4/01.min.mdout -p Mol4/5m96_Mol4_solv.prmtop -c Mol4/5m96_Mol4_solv.inpcrd -r Mol4/01.min.rst7 -inf Mol4/01.min.info -ref Mol4/5m96_Mol4_solv.inpcrd -x Mol4/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol4/02.equil.mdout -p Mol4/5m96_Mol4_solv.prmtop -c Mol4/01.min.rst7 -r Mol4/02.equil.rst7 -inf Mol4/02.equil.info -ref Mol4/01.min.rst7 -x Mol4/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol4/03.min.mdout -p Mol4/5m96_Mol4_solv.prmtop -c Mol4/02.equil.rst7 -r Mol4/03.min.rst7 -inf Mol4/03.min.info -ref Mol4/02.equil.rst7 -x Mol4/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol4/04.min.mdout -p Mol4/5m96_Mol4_solv.prmtop -c Mol4/03.min.rst7 -r Mol4/04.min.rst7 -inf Mol4/04.min.info -ref Mol4/03.min.rst7 -x Mol4/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol4/05.min.mdout -p Mol4/5m96_Mol4_solv.prmtop -c Mol4/04.min.rst7 -r Mol4/05.min.rst7 -inf Mol4/05.min.info -ref Mol4/04.min.rst7 -x Mol4/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol4/06.equil.mdout -p Mol4/5m96_Mol4_solv.prmtop -c Mol4/05.min.rst7 -r Mol4/06.equil.rst7 -inf Mol4/06.equil.info -ref Mol4/05.min.rst7 -x Mol4/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol4/07.equil.mdout -p Mol4/5m96_Mol4_solv.prmtop -c Mol4/06.equil.rst7 -r Mol4/07.equil.rst7 -inf Mol4/07.equil.info -ref Mol4/06.equil.rst7 -x Mol4/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol4/08.equil.mdout -p Mol4/5m96_Mol4_solv.prmtop -c Mol4/07.equil.rst7 -r Mol4/08.equil.rst7 -inf Mol4/08.equil.info -ref Mol4/07.equil.rst7 -x Mol4/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol4/09.equil.mdout -p Mol4/5m96_Mol4_solv.prmtop -c Mol4/08.equil.rst7 -r Mol4/09.equil.rst7 -inf Mol4/09.equil.info -ref Mol4/08.equil.rst7 -x Mol4/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol4/10.prod_1.mdout -p Mol4/5m96_Mol4_solv.prmtop -c Mol4/09.equil.rst7 -r Mol4/10.prod_1.rst7 -inf Mol4/10.prod_1.info -ref Mol4/09.equil.rst7 -x Mol4/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol4/10.prod_2.mdout -p Mol4/5m96_Mol4_solv.prmtop -c Mol4/10.prod_1.rst7 -r Mol4/10.prod_2.rst7 -inf Mol4/10.prod_2.info -ref Mol4/10.prod_1.rst7 -x Mol4/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol4/10.prod_3.mdout -p Mol4/5m96_Mol4_solv.prmtop -c Mol4/10.prod_2.rst7 -r Mol4/10.prod_3.rst7 -inf Mol4/10.prod_3.info -ref Mol4/10.prod_2.rst7 -x Mol4/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol4/10.prod_4.mdout -p Mol4/5m96_Mol4_solv.prmtop -c Mol4/10.prod_3.rst7 -r Mol4/10.prod_4.rst7 -inf Mol4/10.prod_4.info -ref Mol4/10.prod_3.rst7 -x Mol4/10.prod_4.traj

cd ..


##MD molecula 5
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol5/01.min.mdout -p Mol5/5m96_Mol5_solv.prmtop -c Mol5/5m96_Mol5_solv.inpcrd -r Mol5/01.min.rst7 -inf Mol5/01.min.info -ref Mol5/5m96_Mol5_solv.inpcrd -x Mol5/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol5/02.equil.mdout -p Mol5/5m96_Mol5_solv.prmtop -c Mol5/01.min.rst7 -r Mol5/02.equil.rst7 -inf Mol5/02.equil.info -ref Mol5/01.min.rst7 -x Mol5/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol5/03.min.mdout -p Mol5/5m96_Mol5_solv.prmtop -c Mol5/02.equil.rst7 -r Mol5/03.min.rst7 -inf Mol5/03.min.info -ref Mol5/02.equil.rst7 -x Mol5/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol5/04.min.mdout -p Mol5/5m96_Mol5_solv.prmtop -c Mol5/03.min.rst7 -r Mol5/04.min.rst7 -inf Mol5/04.min.info -ref Mol5/03.min.rst7 -x Mol5/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol5/05.min.mdout -p Mol5/5m96_Mol5_solv.prmtop -c Mol5/04.min.rst7 -r Mol5/05.min.rst7 -inf Mol5/05.min.info -ref Mol5/04.min.rst7 -x Mol5/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol5/06.equil.mdout -p Mol5/5m96_Mol5_solv.prmtop -c Mol5/05.min.rst7 -r Mol5/06.equil.rst7 -inf Mol5/06.equil.info -ref Mol5/05.min.rst7 -x Mol5/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol5/07.equil.mdout -p Mol5/5m96_Mol5_solv.prmtop -c Mol5/06.equil.rst7 -r Mol5/07.equil.rst7 -inf Mol5/07.equil.info -ref Mol5/06.equil.rst7 -x Mol5/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol5/08.equil.mdout -p Mol5/5m96_Mol5_solv.prmtop -c Mol5/07.equil.rst7 -r Mol5/08.equil.rst7 -inf Mol5/08.equil.info -ref Mol5/07.equil.rst7 -x Mol5/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol5/09.equil.mdout -p Mol5/5m96_Mol5_solv.prmtop -c Mol5/08.equil.rst7 -r Mol5/09.equil.rst7 -inf Mol5/09.equil.info -ref Mol5/08.equil.rst7 -x Mol5/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol5/10.prod_1.mdout -p Mol5/5m96_Mol5_solv.prmtop -c Mol5/09.equil.rst7 -r Mol5/10.prod_1.rst7 -inf Mol5/10.prod_1.info -ref Mol5/09.equil.rst7 -x Mol5/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol5/10.prod_2.mdout -p Mol5/5m96_Mol5_solv.prmtop -c Mol5/10.prod_1.rst7 -r Mol5/10.prod_2.rst7 -inf Mol5/10.prod_2.info -ref Mol5/10.prod_1.rst7 -x Mol5/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol5/10.prod_3.mdout -p Mol5/5m96_Mol5_solv.prmtop -c Mol5/10.prod_2.rst7 -r Mol5/10.prod_3.rst7 -inf Mol5/10.prod_3.info -ref Mol5/10.prod_2.rst7 -x Mol5/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol5/10.prod_4.mdout -p Mol5/5m96_Mol5_solv.prmtop -c Mol5/10.prod_3.rst7 -r Mol5/10.prod_4.rst7 -inf Mol5/10.prod_4.info -ref Mol5/10.prod_3.rst7 -x Mol5/10.prod_4.traj

cd ..

##MD molecula 6
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol6/01.min.mdout -p Mol6/5m96_Mol6_solv.prmtop -c Mol6/5m96_Mol6_solv.inpcrd -r Mol6/01.min.rst7 -inf Mol6/01.min.info -ref Mol6/5m96_Mol6_solv.inpcrd -x Mol6/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol6/02.equil.mdout -p Mol6/5m96_Mol6_solv.prmtop -c Mol6/01.min.rst7 -r Mol6/02.equil.rst7 -inf Mol6/02.equil.info -ref Mol6/01.min.rst7 -x Mol6/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol6/03.min.mdout -p Mol6/5m96_Mol6_solv.prmtop -c Mol6/02.equil.rst7 -r Mol6/03.min.rst7 -inf Mol6/03.min.info -ref Mol6/02.equil.rst7 -x Mol6/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol6/04.min.mdout -p Mol6/5m96_Mol6_solv.prmtop -c Mol6/03.min.rst7 -r Mol6/04.min.rst7 -inf Mol6/04.min.info -ref Mol6/03.min.rst7 -x Mol6/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol6/05.min.mdout -p Mol6/5m96_Mol6_solv.prmtop -c Mol6/04.min.rst7 -r Mol6/05.min.rst7 -inf Mol6/05.min.info -ref Mol6/04.min.rst7 -x Mol6/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol6/06.equil.mdout -p Mol6/5m96_Mol6_solv.prmtop -c Mol6/05.min.rst7 -r Mol6/06.equil.rst7 -inf Mol6/06.equil.info -ref Mol6/05.min.rst7 -x Mol6/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol6/07.equil.mdout -p Mol6/5m96_Mol6_solv.prmtop -c Mol6/06.equil.rst7 -r Mol6/07.equil.rst7 -inf Mol6/07.equil.info -ref Mol6/06.equil.rst7 -x Mol6/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol6/08.equil.mdout -p Mol6/5m96_Mol6_solv.prmtop -c Mol6/07.equil.rst7 -r Mol6/08.equil.rst7 -inf Mol6/08.equil.info -ref Mol6/07.equil.rst7 -x Mol6/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol6/09.equil.mdout -p Mol6/5m96_Mol6_solv.prmtop -c Mol6/08.equil.rst7 -r Mol6/09.equil.rst7 -inf Mol6/09.equil.info -ref Mol6/08.equil.rst7 -x Mol6/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol6/10.prod_1.mdout -p Mol6/5m96_Mol6_solv.prmtop -c Mol6/09.equil.rst7 -r Mol6/10.prod_1.rst7 -inf Mol6/10.prod_1.info -ref Mol6/09.equil.rst7 -x Mol6/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol6/10.prod_2.mdout -p Mol6/5m96_Mol6_solv.prmtop -c Mol6/10.prod_1.rst7 -r Mol6/10.prod_2.rst7 -inf Mol6/10.prod_2.info -ref Mol6/10.prod_1.rst7 -x Mol6/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol6/10.prod_3.mdout -p Mol6/5m96_Mol6_solv.prmtop -c Mol6/10.prod_2.rst7 -r Mol6/10.prod_3.rst7 -inf Mol6/10.prod_3.info -ref Mol6/10.prod_2.rst7 -x Mol6/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol6/10.prod_4.mdout -p Mol6/5m96_Mol6_solv.prmtop -c Mol6/10.prod_3.rst7 -r Mol6/10.prod_4.rst7 -inf Mol6/10.prod_4.info -ref Mol6/10.prod_3.rst7 -x Mol6/10.prod_4.traj

cd ..

##MD molecula 7
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol7/01.min.mdout -p Mol7/5m96_Mol7_solv.prmtop -c Mol7/5m96_Mol7_solv.inpcrd -r Mol7/01.min.rst7 -inf Mol7/01.min.info -ref Mol7/5m96_Mol7_solv.inpcrd -x Mol7/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol7/02.equil.mdout -p Mol7/5m96_Mol7_solv.prmtop -c Mol7/01.min.rst7 -r Mol7/02.equil.rst7 -inf Mol7/02.equil.info -ref Mol7/01.min.rst7 -x Mol7/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol7/03.min.mdout -p Mol7/5m96_Mol7_solv.prmtop -c Mol7/02.equil.rst7 -r Mol7/03.min.rst7 -inf Mol7/03.min.info -ref Mol7/02.equil.rst7 -x Mol7/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol7/04.min.mdout -p Mol7/5m96_Mol7_solv.prmtop -c Mol7/03.min.rst7 -r Mol7/04.min.rst7 -inf Mol7/04.min.info -ref Mol7/03.min.rst7 -x Mol7/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol7/05.min.mdout -p Mol7/5m96_Mol7_solv.prmtop -c Mol7/04.min.rst7 -r Mol7/05.min.rst7 -inf Mol7/05.min.info -ref Mol7/04.min.rst7 -x Mol7/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol7/06.equil.mdout -p Mol7/5m96_Mol7_solv.prmtop -c Mol7/05.min.rst7 -r Mol7/06.equil.rst7 -inf Mol7/06.equil.info -ref Mol7/05.min.rst7 -x Mol7/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol7/07.equil.mdout -p Mol7/5m96_Mol7_solv.prmtop -c Mol7/06.equil.rst7 -r Mol7/07.equil.rst7 -inf Mol7/07.equil.info -ref Mol7/06.equil.rst7 -x Mol7/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol7/08.equil.mdout -p Mol7/5m96_Mol7_solv.prmtop -c Mol7/07.equil.rst7 -r Mol7/08.equil.rst7 -inf Mol7/08.equil.info -ref Mol7/07.equil.rst7 -x Mol7/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol7/09.equil.mdout -p Mol7/5m96_Mol7_solv.prmtop -c Mol7/08.equil.rst7 -r Mol7/09.equil.rst7 -inf Mol7/09.equil.info -ref Mol7/08.equil.rst7 -x Mol7/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol7/10.prod_1.mdout -p Mol7/5m96_Mol7_solv.prmtop -c Mol7/09.equil.rst7 -r Mol7/10.prod_1.rst7 -inf Mol7/10.prod_1.info -ref Mol7/09.equil.rst7 -x Mol7/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol7/10.prod_2.mdout -p Mol7/5m96_Mol7_solv.prmtop -c Mol7/10.prod_1.rst7 -r Mol7/10.prod_2.rst7 -inf Mol7/10.prod_2.info -ref Mol7/10.prod_1.rst7 -x Mol7/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol7/10.prod_3.mdout -p Mol7/5m96_Mol7_solv.prmtop -c Mol7/10.prod_2.rst7 -r Mol7/10.prod_3.rst7 -inf Mol7/10.prod_3.info -ref Mol7/10.prod_2.rst7 -x Mol7/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol7/10.prod_4.mdout -p Mol7/5m96_Mol7_solv.prmtop -c Mol7/10.prod_3.rst7 -r Mol7/10.prod_4.rst7 -inf Mol7/10.prod_4.info -ref Mol7/10.prod_3.rst7 -x Mol7/10.prod_4.traj

cd ..

##MD molecula 8
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol8/01.min.mdout -p Mol8/5m96_Mol8_solv.prmtop -c Mol8/5m96_Mol8_solv.inpcrd -r Mol8/01.min.rst7 -inf Mol8/01.min.info -ref Mol8/5m96_Mol8_solv.inpcrd -x Mol8/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol8/02.equil.mdout -p Mol8/5m96_Mol8_solv.prmtop -c Mol8/01.min.rst7 -r Mol8/02.equil.rst7 -inf Mol8/02.equil.info -ref Mol8/01.min.rst7 -x Mol8/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol8/03.min.mdout -p Mol8/5m96_Mol8_solv.prmtop -c Mol8/02.equil.rst7 -r Mol8/03.min.rst7 -inf Mol8/03.min.info -ref Mol8/02.equil.rst7 -x Mol8/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol8/04.min.mdout -p Mol8/5m96_Mol8_solv.prmtop -c Mol8/03.min.rst7 -r Mol8/04.min.rst7 -inf Mol8/04.min.info -ref Mol8/03.min.rst7 -x Mol8/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol8/05.min.mdout -p Mol8/5m96_Mol8_solv.prmtop -c Mol8/04.min.rst7 -r Mol8/05.min.rst7 -inf Mol8/05.min.info -ref Mol8/04.min.rst7 -x Mol8/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol8/06.equil.mdout -p Mol8/5m96_Mol8_solv.prmtop -c Mol8/05.min.rst7 -r Mol8/06.equil.rst7 -inf Mol8/06.equil.info -ref Mol8/05.min.rst7 -x Mol8/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol8/07.equil.mdout -p Mol8/5m96_Mol8_solv.prmtop -c Mol8/06.equil.rst7 -r Mol8/07.equil.rst7 -inf Mol8/07.equil.info -ref Mol8/06.equil.rst7 -x Mol8/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol8/08.equil.mdout -p Mol8/5m96_Mol8_solv.prmtop -c Mol8/07.equil.rst7 -r Mol8/08.equil.rst7 -inf Mol8/08.equil.info -ref Mol8/07.equil.rst7 -x Mol8/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol8/09.equil.mdout -p Mol8/5m96_Mol8_solv.prmtop -c Mol8/08.equil.rst7 -r Mol8/09.equil.rst7 -inf Mol8/09.equil.info -ref Mol8/08.equil.rst7 -x Mol8/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol8/10.prod_1.mdout -p Mol8/5m96_Mol8_solv.prmtop -c Mol8/09.equil.rst7 -r Mol8/10.prod_1.rst7 -inf Mol8/10.prod_1.info -ref Mol8/09.equil.rst7 -x Mol8/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol8/10.prod_2.mdout -p Mol8/5m96_Mol8_solv.prmtop -c Mol8/10.prod_1.rst7 -r Mol8/10.prod_2.rst7 -inf Mol8/10.prod_2.info -ref Mol8/10.prod_1.rst7 -x Mol8/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol8/10.prod_3.mdout -p Mol8/5m96_Mol8_solv.prmtop -c Mol8/10.prod_2.rst7 -r Mol8/10.prod_3.rst7 -inf Mol8/10.prod_3.info -ref Mol8/10.prod_2.rst7 -x Mol8/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol8/10.prod_4.mdout -p Mol8/5m96_Mol8_solv.prmtop -c Mol8/10.prod_3.rst7 -r Mol8/10.prod_4.rst7 -inf Mol8/10.prod_4.info -ref Mol8/10.prod_3.rst7 -x Mol8/10.prod_4.traj

cd ..

##MD molecula 9
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol9/01.min.mdout -p Mol9/5m96_Mol9_solv.prmtop -c Mol9/5m96_Mol9_solv.inpcrd -r Mol9/01.min.rst7 -inf Mol9/01.min.info -ref Mol9/5m96_Mol9_solv.inpcrd -x Mol9/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol9/02.equil.mdout -p Mol9/5m96_Mol9_solv.prmtop -c Mol9/01.min.rst7 -r Mol9/02.equil.rst7 -inf Mol9/02.equil.info -ref Mol9/01.min.rst7 -x Mol9/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol9/03.min.mdout -p Mol9/5m96_Mol9_solv.prmtop -c Mol9/02.equil.rst7 -r Mol9/03.min.rst7 -inf Mol9/03.min.info -ref Mol9/02.equil.rst7 -x Mol9/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol9/04.min.mdout -p Mol9/5m96_Mol9_solv.prmtop -c Mol9/03.min.rst7 -r Mol9/04.min.rst7 -inf Mol9/04.min.info -ref Mol9/03.min.rst7 -x Mol9/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol9/05.min.mdout -p Mol9/5m96_Mol9_solv.prmtop -c Mol9/04.min.rst7 -r Mol9/05.min.rst7 -inf Mol9/05.min.info -ref Mol9/04.min.rst7 -x Mol9/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol9/06.equil.mdout -p Mol9/5m96_Mol9_solv.prmtop -c Mol9/05.min.rst7 -r Mol9/06.equil.rst7 -inf Mol9/06.equil.info -ref Mol9/05.min.rst7 -x Mol9/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol9/07.equil.mdout -p Mol9/5m96_Mol9_solv.prmtop -c Mol9/06.equil.rst7 -r Mol9/07.equil.rst7 -inf Mol9/07.equil.info -ref Mol9/06.equil.rst7 -x Mol9/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol9/08.equil.mdout -p Mol9/5m96_Mol9_solv.prmtop -c Mol9/07.equil.rst7 -r Mol9/08.equil.rst7 -inf Mol9/08.equil.info -ref Mol9/07.equil.rst7 -x Mol9/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol9/09.equil.mdout -p Mol9/5m96_Mol9_solv.prmtop -c Mol9/08.equil.rst7 -r Mol9/09.equil.rst7 -inf Mol9/09.equil.info -ref Mol9/08.equil.rst7 -x Mol9/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol9/10.prod_1.mdout -p Mol9/5m96_Mol9_solv.prmtop -c Mol9/09.equil.rst7 -r Mol9/10.prod_1.rst7 -inf Mol9/10.prod_1.info -ref Mol9/09.equil.rst7 -x Mol9/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol9/10.prod_2.mdout -p Mol9/5m96_Mol9_solv.prmtop -c Mol9/10.prod_1.rst7 -r Mol9/10.prod_2.rst7 -inf Mol9/10.prod_2.info -ref Mol9/10.prod_1.rst7 -x Mol9/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol9/10.prod_3.mdout -p Mol9/5m96_Mol9_solv.prmtop -c Mol9/10.prod_2.rst7 -r Mol9/10.prod_3.rst7 -inf Mol9/10.prod_3.info -ref Mol9/10.prod_2.rst7 -x Mol9/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol9/10.prod_4.mdout -p Mol9/5m96_Mol9_solv.prmtop -c Mol9/10.prod_3.rst7 -r Mol9/10.prod_4.rst7 -inf Mol9/10.prod_4.info -ref Mol9/10.prod_3.rst7 -x Mol9/10.prod_4.traj

cd ..

##MD molecula 10
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol10/01.min.mdout -p Mol10/5m96_Mol10_solv.prmtop -c Mol10/5m96_Mol10_solv.inpcrd -r Mol10/01.min.rst7 -inf Mol10/01.min.info -ref Mol10/5m96_Mol10_solv.inpcrd -x Mol10/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol10/02.equil.mdout -p Mol10/5m96_Mol10_solv.prmtop -c Mol10/01.min.rst7 -r Mol10/02.equil.rst7 -inf Mol10/02.equil.info -ref Mol10/01.min.rst7 -x Mol10/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol10/03.min.mdout -p Mol10/5m96_Mol10_solv.prmtop -c Mol10/02.equil.rst7 -r Mol10/03.min.rst7 -inf Mol10/03.min.info -ref Mol10/02.equil.rst7 -x Mol10/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol10/04.min.mdout -p Mol10/5m96_Mol10_solv.prmtop -c Mol10/03.min.rst7 -r Mol10/04.min.rst7 -inf Mol10/04.min.info -ref Mol10/03.min.rst7 -x Mol10/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol10/05.min.mdout -p Mol10/5m96_Mol10_solv.prmtop -c Mol10/04.min.rst7 -r Mol10/05.min.rst7 -inf Mol10/05.min.info -ref Mol10/04.min.rst7 -x Mol10/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol10/06.equil.mdout -p Mol10/5m96_Mol10_solv.prmtop -c Mol10/05.min.rst7 -r Mol10/06.equil.rst7 -inf Mol10/06.equil.info -ref Mol10/05.min.rst7 -x Mol10/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol10/07.equil.mdout -p Mol10/5m96_Mol10_solv.prmtop -c Mol10/06.equil.rst7 -r Mol10/07.equil.rst7 -inf Mol10/07.equil.info -ref Mol10/06.equil.rst7 -x Mol10/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol10/08.equil.mdout -p Mol10/5m96_Mol10_solv.prmtop -c Mol10/07.equil.rst7 -r Mol10/08.equil.rst7 -inf Mol10/08.equil.info -ref Mol10/07.equil.rst7 -x Mol10/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol10/09.equil.mdout -p Mol10/5m96_Mol10_solv.prmtop -c Mol10/08.equil.rst7 -r Mol10/09.equil.rst7 -inf Mol10/09.equil.info -ref Mol10/08.equil.rst7 -x Mol10/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol10/10.prod_1.mdout -p Mol10/5m96_Mol10_solv.prmtop -c Mol10/09.equil.rst7 -r Mol10/10.prod_1.rst7 -inf Mol10/10.prod_1.info -ref Mol10/09.equil.rst7 -x Mol10/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol10/10.prod_2.mdout -p Mol10/5m96_Mol10_solv.prmtop -c Mol10/10.prod_1.rst7 -r Mol10/10.prod_2.rst7 -inf Mol10/10.prod_2.info -ref Mol10/10.prod_1.rst7 -x Mol10/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol10/10.prod_3.mdout -p Mol10/5m96_Mol10_solv.prmtop -c Mol10/10.prod_2.rst7 -r Mol10/10.prod_3.rst7 -inf Mol10/10.prod_3.info -ref Mol10/10.prod_2.rst7 -x Mol10/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol10/10.prod_4.mdout -p Mol10/5m96_Mol10_solv.prmtop -c Mol10/10.prod_3.rst7 -r Mol10/10.prod_4.rst7 -inf Mol10/10.prod_4.info -ref Mol10/10.prod_3.rst7 -x Mol10/10.prod_4.traj

cd ..


##MD molecula 11
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol11/01.min.mdout -p Mol11/5m96_Mol11_solv.prmtop -c Mol11/5m96_Mol11_solv.inpcrd -r Mol11/01.min.rst7 -inf Mol11/01.min.info -ref Mol11/5m96_Mol11_solv.inpcrd -x Mol11/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol11/02.equil.mdout -p Mol11/5m96_Mol11_solv.prmtop -c Mol11/01.min.rst7 -r Mol11/02.equil.rst7 -inf Mol11/02.equil.info -ref Mol11/01.min.rst7 -x Mol11/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol11/03.min.mdout -p Mol11/5m96_Mol11_solv.prmtop -c Mol11/02.equil.rst7 -r Mol11/03.min.rst7 -inf Mol11/03.min.info -ref Mol11/02.equil.rst7 -x Mol11/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol11/04.min.mdout -p Mol11/5m96_Mol11_solv.prmtop -c Mol11/03.min.rst7 -r Mol11/04.min.rst7 -inf Mol11/04.min.info -ref Mol11/03.min.rst7 -x Mol11/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol11/05.min.mdout -p Mol11/5m96_Mol11_solv.prmtop -c Mol11/04.min.rst7 -r Mol11/05.min.rst7 -inf Mol11/05.min.info -ref Mol11/04.min.rst7 -x Mol11/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol11/06.equil.mdout -p Mol11/5m96_Mol11_solv.prmtop -c Mol11/05.min.rst7 -r Mol11/06.equil.rst7 -inf Mol11/06.equil.info -ref Mol11/05.min.rst7 -x Mol11/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol11/07.equil.mdout -p Mol11/5m96_Mol11_solv.prmtop -c Mol11/06.equil.rst7 -r Mol11/07.equil.rst7 -inf Mol11/07.equil.info -ref Mol11/06.equil.rst7 -x Mol11/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol11/08.equil.mdout -p Mol11/5m96_Mol11_solv.prmtop -c Mol11/07.equil.rst7 -r Mol11/08.equil.rst7 -inf Mol11/08.equil.info -ref Mol11/07.equil.rst7 -x Mol11/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol11/09.equil.mdout -p Mol11/5m96_Mol11_solv.prmtop -c Mol11/08.equil.rst7 -r Mol11/09.equil.rst7 -inf Mol11/09.equil.info -ref Mol11/08.equil.rst7 -x Mol11/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol11/10.prod_1.mdout -p Mol11/5m96_Mol11_solv.prmtop -c Mol11/09.equil.rst7 -r Mol11/10.prod_1.rst7 -inf Mol11/10.prod_1.info -ref Mol11/09.equil.rst7 -x Mol11/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol11/10.prod_2.mdout -p Mol11/5m96_Mol11_solv.prmtop -c Mol11/10.prod_1.rst7 -r Mol11/10.prod_2.rst7 -inf Mol11/10.prod_2.info -ref Mol11/10.prod_1.rst7 -x Mol11/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol11/10.prod_3.mdout -p Mol11/5m96_Mol11_solv.prmtop -c Mol11/10.prod_2.rst7 -r Mol11/10.prod_3.rst7 -inf Mol11/10.prod_3.info -ref Mol11/10.prod_2.rst7 -x Mol11/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol11/10.prod_4.mdout -p Mol11/5m96_Mol11_solv.prmtop -c Mol11/10.prod_3.rst7 -r Mol11/10.prod_4.rst7 -inf Mol11/10.prod_4.info -ref Mol11/10.prod_3.rst7 -x Mol11/10.prod_4.traj

cd ..

##MD molecula 12
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol12/01.min.mdout -p Mol12/5m96_Mol12_solv.prmtop -c Mol12/5m96_Mol12_solv.inpcrd -r Mol12/01.min.rst7 -inf Mol12/01.min.info -ref Mol12/5m96_Mol12_solv.inpcrd -x Mol12/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol12/02.equil.mdout -p Mol12/5m96_Mol12_solv.prmtop -c Mol12/01.min.rst7 -r Mol12/02.equil.rst7 -inf Mol12/02.equil.info -ref Mol12/01.min.rst7 -x Mol12/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol12/03.min.mdout -p Mol12/5m96_Mol12_solv.prmtop -c Mol12/02.equil.rst7 -r Mol12/03.min.rst7 -inf Mol12/03.min.info -ref Mol12/02.equil.rst7 -x Mol12/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol12/04.min.mdout -p Mol12/5m96_Mol12_solv.prmtop -c Mol12/03.min.rst7 -r Mol12/04.min.rst7 -inf Mol12/04.min.info -ref Mol12/03.min.rst7 -x Mol12/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol12/05.min.mdout -p Mol12/5m96_Mol12_solv.prmtop -c Mol12/04.min.rst7 -r Mol12/05.min.rst7 -inf Mol12/05.min.info -ref Mol12/04.min.rst7 -x Mol12/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol12/06.equil.mdout -p Mol12/5m96_Mol12_solv.prmtop -c Mol12/05.min.rst7 -r Mol12/06.equil.rst7 -inf Mol12/06.equil.info -ref Mol12/05.min.rst7 -x Mol12/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol12/07.equil.mdout -p Mol12/5m96_Mol12_solv.prmtop -c Mol12/06.equil.rst7 -r Mol12/07.equil.rst7 -inf Mol12/07.equil.info -ref Mol12/06.equil.rst7 -x Mol12/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol12/08.equil.mdout -p Mol12/5m96_Mol12_solv.prmtop -c Mol12/07.equil.rst7 -r Mol12/08.equil.rst7 -inf Mol12/08.equil.info -ref Mol12/07.equil.rst7 -x Mol12/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol12/09.equil.mdout -p Mol12/5m96_Mol12_solv.prmtop -c Mol12/08.equil.rst7 -r Mol12/09.equil.rst7 -inf Mol12/09.equil.info -ref Mol12/08.equil.rst7 -x Mol12/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol12/10.prod_1.mdout -p Mol12/5m96_Mol12_solv.prmtop -c Mol12/09.equil.rst7 -r Mol12/10.prod_1.rst7 -inf Mol12/10.prod_1.info -ref Mol12/09.equil.rst7 -x Mol12/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol12/10.prod_2.mdout -p Mol12/5m96_Mol12_solv.prmtop -c Mol12/10.prod_1.rst7 -r Mol12/10.prod_2.rst7 -inf Mol12/10.prod_2.info -ref Mol12/10.prod_1.rst7 -x Mol12/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol12/10.prod_3.mdout -p Mol12/5m96_Mol12_solv.prmtop -c Mol12/10.prod_2.rst7 -r Mol12/10.prod_3.rst7 -inf Mol12/10.prod_3.info -ref Mol12/10.prod_2.rst7 -x Mol12/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol12/10.prod_4.mdout -p Mol12/5m96_Mol12_solv.prmtop -c Mol12/10.prod_3.rst7 -r Mol12/10.prod_4.rst7 -inf Mol12/10.prod_4.info -ref Mol12/10.prod_3.rst7 -x Mol12/10.prod_4.traj

cd ..

##MD molecula 13
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol13/01.min.mdout -p Mol13/5m96_Mol13_solv.prmtop -c Mol13/5m96_Mol13_solv.inpcrd -r Mol13/01.min.rst7 -inf Mol13/01.min.info -ref Mol13/5m96_Mol13_solv.inpcrd -x Mol13/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol13/02.equil.mdout -p Mol13/5m96_Mol13_solv.prmtop -c Mol13/01.min.rst7 -r Mol13/02.equil.rst7 -inf Mol13/02.equil.info -ref Mol13/01.min.rst7 -x Mol13/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol13/03.min.mdout -p Mol13/5m96_Mol13_solv.prmtop -c Mol13/02.equil.rst7 -r Mol13/03.min.rst7 -inf Mol13/03.min.info -ref Mol13/02.equil.rst7 -x Mol13/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol13/04.min.mdout -p Mol13/5m96_Mol13_solv.prmtop -c Mol13/03.min.rst7 -r Mol13/04.min.rst7 -inf Mol13/04.min.info -ref Mol13/03.min.rst7 -x Mol13/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol13/05.min.mdout -p Mol13/5m96_Mol13_solv.prmtop -c Mol13/04.min.rst7 -r Mol13/05.min.rst7 -inf Mol13/05.min.info -ref Mol13/04.min.rst7 -x Mol13/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol13/06.equil.mdout -p Mol13/5m96_Mol13_solv.prmtop -c Mol13/05.min.rst7 -r Mol13/06.equil.rst7 -inf Mol13/06.equil.info -ref Mol13/05.min.rst7 -x Mol13/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol13/07.equil.mdout -p Mol13/5m96_Mol13_solv.prmtop -c Mol13/06.equil.rst7 -r Mol13/07.equil.rst7 -inf Mol13/07.equil.info -ref Mol13/06.equil.rst7 -x Mol13/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol13/08.equil.mdout -p Mol13/5m96_Mol13_solv.prmtop -c Mol13/07.equil.rst7 -r Mol13/08.equil.rst7 -inf Mol13/08.equil.info -ref Mol13/07.equil.rst7 -x Mol13/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol13/09.equil.mdout -p Mol13/5m96_Mol13_solv.prmtop -c Mol13/08.equil.rst7 -r Mol13/09.equil.rst7 -inf Mol13/09.equil.info -ref Mol13/08.equil.rst7 -x Mol13/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol13/10.prod_1.mdout -p Mol13/5m96_Mol13_solv.prmtop -c Mol13/09.equil.rst7 -r Mol13/10.prod_1.rst7 -inf Mol13/10.prod_1.info -ref Mol13/09.equil.rst7 -x Mol13/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol13/10.prod_2.mdout -p Mol13/5m96_Mol13_solv.prmtop -c Mol13/10.prod_1.rst7 -r Mol13/10.prod_2.rst7 -inf Mol13/10.prod_2.info -ref Mol13/10.prod_1.rst7 -x Mol13/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol13/10.prod_3.mdout -p Mol13/5m96_Mol13_solv.prmtop -c Mol13/10.prod_2.rst7 -r Mol13/10.prod_3.rst7 -inf Mol13/10.prod_3.info -ref Mol13/10.prod_2.rst7 -x Mol13/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol13/10.prod_4.mdout -p Mol13/5m96_Mol13_solv.prmtop -c Mol13/10.prod_3.rst7 -r Mol13/10.prod_4.rst7 -inf Mol13/10.prod_4.info -ref Mol13/10.prod_3.rst7 -x Mol13/10.prod_4.traj

cd ..


##MD molecula 14
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol14/01.min.mdout -p Mol14/5m96_Mol14_solv.prmtop -c Mol14/5m96_Mol14_solv.inpcrd -r Mol14/01.min.rst7 -inf Mol14/01.min.info -ref Mol14/5m96_Mol14_solv.inpcrd -x Mol14/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol14/02.equil.mdout -p Mol14/5m96_Mol14_solv.prmtop -c Mol14/01.min.rst7 -r Mol14/02.equil.rst7 -inf Mol14/02.equil.info -ref Mol14/01.min.rst7 -x Mol14/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol14/03.min.mdout -p Mol14/5m96_Mol14_solv.prmtop -c Mol14/02.equil.rst7 -r Mol14/03.min.rst7 -inf Mol14/03.min.info -ref Mol14/02.equil.rst7 -x Mol14/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol14/04.min.mdout -p Mol14/5m96_Mol14_solv.prmtop -c Mol14/03.min.rst7 -r Mol14/04.min.rst7 -inf Mol14/04.min.info -ref Mol14/03.min.rst7 -x Mol14/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol14/05.min.mdout -p Mol14/5m96_Mol14_solv.prmtop -c Mol14/04.min.rst7 -r Mol14/05.min.rst7 -inf Mol14/05.min.info -ref Mol14/04.min.rst7 -x Mol14/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol14/06.equil.mdout -p Mol14/5m96_Mol14_solv.prmtop -c Mol14/05.min.rst7 -r Mol14/06.equil.rst7 -inf Mol14/06.equil.info -ref Mol14/05.min.rst7 -x Mol14/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol14/07.equil.mdout -p Mol14/5m96_Mol14_solv.prmtop -c Mol14/06.equil.rst7 -r Mol14/07.equil.rst7 -inf Mol14/07.equil.info -ref Mol14/06.equil.rst7 -x Mol14/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol14/08.equil.mdout -p Mol14/5m96_Mol14_solv.prmtop -c Mol14/07.equil.rst7 -r Mol14/08.equil.rst7 -inf Mol14/08.equil.info -ref Mol14/07.equil.rst7 -x Mol14/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol14/09.equil.mdout -p Mol14/5m96_Mol14_solv.prmtop -c Mol14/08.equil.rst7 -r Mol14/09.equil.rst7 -inf Mol14/09.equil.info -ref Mol14/08.equil.rst7 -x Mol14/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol14/10.prod_1.mdout -p Mol14/5m96_Mol14_solv.prmtop -c Mol14/09.equil.rst7 -r Mol14/10.prod_1.rst7 -inf Mol14/10.prod_1.info -ref Mol14/09.equil.rst7 -x Mol14/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol14/10.prod_2.mdout -p Mol14/5m96_Mol14_solv.prmtop -c Mol14/10.prod_1.rst7 -r Mol14/10.prod_2.rst7 -inf Mol14/10.prod_2.info -ref Mol14/10.prod_1.rst7 -x Mol14/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol14/10.prod_3.mdout -p Mol14/5m96_Mol14_solv.prmtop -c Mol14/10.prod_2.rst7 -r Mol14/10.prod_3.rst7 -inf Mol14/10.prod_3.info -ref Mol14/10.prod_2.rst7 -x Mol14/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol14/10.prod_4.mdout -p Mol14/5m96_Mol14_solv.prmtop -c Mol14/10.prod_3.rst7 -r Mol14/10.prod_4.rst7 -inf Mol14/10.prod_4.info -ref Mol14/10.prod_3.rst7 -x Mol14/10.prod_4.traj

cd ..

##MD molecula 15
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol15/01.min.mdout -p Mol15/5m96_Mol15_solv.prmtop -c Mol15/5m96_Mol15_solv.inpcrd -r Mol15/01.min.rst7 -inf Mol15/01.min.info -ref Mol15/5m96_Mol15_solv.inpcrd -x Mol15/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol15/02.equil.mdout -p Mol15/5m96_Mol15_solv.prmtop -c Mol15/01.min.rst7 -r Mol15/02.equil.rst7 -inf Mol15/02.equil.info -ref Mol15/01.min.rst7 -x Mol15/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol15/03.min.mdout -p Mol15/5m96_Mol15_solv.prmtop -c Mol15/02.equil.rst7 -r Mol15/03.min.rst7 -inf Mol15/03.min.info -ref Mol15/02.equil.rst7 -x Mol15/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol15/04.min.mdout -p Mol15/5m96_Mol15_solv.prmtop -c Mol15/03.min.rst7 -r Mol15/04.min.rst7 -inf Mol15/04.min.info -ref Mol15/03.min.rst7 -x Mol15/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol15/05.min.mdout -p Mol15/5m96_Mol15_solv.prmtop -c Mol15/04.min.rst7 -r Mol15/05.min.rst7 -inf Mol15/05.min.info -ref Mol15/04.min.rst7 -x Mol15/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol15/06.equil.mdout -p Mol15/5m96_Mol15_solv.prmtop -c Mol15/05.min.rst7 -r Mol15/06.equil.rst7 -inf Mol15/06.equil.info -ref Mol15/05.min.rst7 -x Mol15/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol15/07.equil.mdout -p Mol15/5m96_Mol15_solv.prmtop -c Mol15/06.equil.rst7 -r Mol15/07.equil.rst7 -inf Mol15/07.equil.info -ref Mol15/06.equil.rst7 -x Mol15/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol15/08.equil.mdout -p Mol15/5m96_Mol15_solv.prmtop -c Mol15/07.equil.rst7 -r Mol15/08.equil.rst7 -inf Mol15/08.equil.info -ref Mol15/07.equil.rst7 -x Mol15/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol15/09.equil.mdout -p Mol15/5m96_Mol15_solv.prmtop -c Mol15/08.equil.rst7 -r Mol15/09.equil.rst7 -inf Mol15/09.equil.info -ref Mol15/08.equil.rst7 -x Mol15/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol15/10.prod_1.mdout -p Mol15/5m96_Mol15_solv.prmtop -c Mol15/09.equil.rst7 -r Mol15/10.prod_1.rst7 -inf Mol15/10.prod_1.info -ref Mol15/09.equil.rst7 -x Mol15/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol15/10.prod_2.mdout -p Mol15/5m96_Mol15_solv.prmtop -c Mol15/10.prod_1.rst7 -r Mol15/10.prod_2.rst7 -inf Mol15/10.prod_2.info -ref Mol15/10.prod_1.rst7 -x Mol15/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol15/10.prod_3.mdout -p Mol15/5m96_Mol15_solv.prmtop -c Mol15/10.prod_2.rst7 -r Mol15/10.prod_3.rst7 -inf Mol15/10.prod_3.info -ref Mol15/10.prod_2.rst7 -x Mol15/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol15/10.prod_4.mdout -p Mol15/5m96_Mol15_solv.prmtop -c Mol15/10.prod_3.rst7 -r Mol15/10.prod_4.rst7 -inf Mol15/10.prod_4.info -ref Mol15/10.prod_3.rst7 -x Mol15/10.prod_4.traj

cd ..

##MD molecula 16
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol16/01.min.mdout -p Mol16/5m96_Mol16_solv.prmtop -c Mol16/5m96_Mol16_solv.inpcrd -r Mol16/01.min.rst7 -inf Mol16/01.min.info -ref Mol16/5m96_Mol16_solv.inpcrd -x Mol16/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol16/02.equil.mdout -p Mol16/5m96_Mol16_solv.prmtop -c Mol16/01.min.rst7 -r Mol16/02.equil.rst7 -inf Mol16/02.equil.info -ref Mol16/01.min.rst7 -x Mol16/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol16/03.min.mdout -p Mol16/5m96_Mol16_solv.prmtop -c Mol16/02.equil.rst7 -r Mol16/03.min.rst7 -inf Mol16/03.min.info -ref Mol16/02.equil.rst7 -x Mol16/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol16/04.min.mdout -p Mol16/5m96_Mol16_solv.prmtop -c Mol16/03.min.rst7 -r Mol16/04.min.rst7 -inf Mol16/04.min.info -ref Mol16/03.min.rst7 -x Mol16/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol16/05.min.mdout -p Mol16/5m96_Mol16_solv.prmtop -c Mol16/04.min.rst7 -r Mol16/05.min.rst7 -inf Mol16/05.min.info -ref Mol16/04.min.rst7 -x Mol16/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol16/06.equil.mdout -p Mol16/5m96_Mol16_solv.prmtop -c Mol16/05.min.rst7 -r Mol16/06.equil.rst7 -inf Mol16/06.equil.info -ref Mol16/05.min.rst7 -x Mol16/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol16/07.equil.mdout -p Mol16/5m96_Mol16_solv.prmtop -c Mol16/06.equil.rst7 -r Mol16/07.equil.rst7 -inf Mol16/07.equil.info -ref Mol16/06.equil.rst7 -x Mol16/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol16/08.equil.mdout -p Mol16/5m96_Mol16_solv.prmtop -c Mol16/07.equil.rst7 -r Mol16/08.equil.rst7 -inf Mol16/08.equil.info -ref Mol16/07.equil.rst7 -x Mol16/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol16/09.equil.mdout -p Mol16/5m96_Mol16_solv.prmtop -c Mol16/08.equil.rst7 -r Mol16/09.equil.rst7 -inf Mol16/09.equil.info -ref Mol16/08.equil.rst7 -x Mol16/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol16/10.prod_1.mdout -p Mol16/5m96_Mol16_solv.prmtop -c Mol16/09.equil.rst7 -r Mol16/10.prod_1.rst7 -inf Mol16/10.prod_1.info -ref Mol16/09.equil.rst7 -x Mol16/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol16/10.prod_2.mdout -p Mol16/5m96_Mol16_solv.prmtop -c Mol16/10.prod_1.rst7 -r Mol16/10.prod_2.rst7 -inf Mol16/10.prod_2.info -ref Mol16/10.prod_1.rst7 -x Mol16/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol16/10.prod_3.mdout -p Mol16/5m96_Mol16_solv.prmtop -c Mol16/10.prod_2.rst7 -r Mol16/10.prod_3.rst7 -inf Mol16/10.prod_3.info -ref Mol16/10.prod_2.rst7 -x Mol16/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol16/10.prod_4.mdout -p Mol16/5m96_Mol16_solv.prmtop -c Mol16/10.prod_3.rst7 -r Mol16/10.prod_4.rst7 -inf Mol16/10.prod_4.info -ref Mol16/10.prod_3.rst7 -x Mol16/10.prod_4.traj

cd ..


##MD molecula 17
cd mol2/
#Minimizacion
pmemd.cuda -O -i 01.min.mdin -o Mol17/01.min.mdout -p Mol17/5m96_Mol17_solv.prmtop -c Mol17/5m96_Mol17_solv.inpcrd -r Mol17/01.min.rst7 -inf Mol17/01.min.info -ref Mol17/5m96_Mol17_solv.inpcrd -x Mol17/01.min.traj
#Equilibrado
pmemd.cuda -O -i 02.equil.mdin -o Mol17/02.equil.mdout -p Mol17/5m96_Mol17_solv.prmtop -c Mol17/01.min.rst7 -r Mol17/02.equil.rst7 -inf Mol17/02.equil.info -ref Mol17/01.min.rst7 -x Mol17/02.equil.traj
#3 rondas de minimizacion
pmemd.cuda -O -i 03.min.mdin -o Mol17/03.min.mdout -p Mol17/5m96_Mol17_solv.prmtop -c Mol17/02.equil.rst7 -r Mol17/03.min.rst7 -inf Mol17/03.min.info -ref Mol17/02.equil.rst7 -x Mol17/03.min.traj
pmemd.cuda -O -i 04.min.mdin -o Mol17/04.min.mdout -p Mol17/5m96_Mol17_solv.prmtop -c Mol17/03.min.rst7 -r Mol17/04.min.rst7 -inf Mol17/04.min.info -ref Mol17/03.min.rst7 -x Mol17/04.min.traj
pmemd.cuda -O -i 05.min.mdin -o Mol17/05.min.mdout -p Mol17/5m96_Mol17_solv.prmtop -c Mol17/04.min.rst7 -r Mol17/05.min.rst7 -inf Mol17/05.min.info -ref Mol17/04.min.rst7 -x Mol17/05.min.traj
#4 rondas de equilibrado
pmemd.cuda -O -i 06.equil.mdin -o Mol17/06.equil.mdout -p Mol17/5m96_Mol17_solv.prmtop -c Mol17/05.min.rst7 -r Mol17/06.equil.rst7 -inf Mol17/06.equil.info -ref Mol17/05.min.rst7 -x Mol17/06.equil.traj
pmemd.cuda -O -i 07.equil.mdin -o Mol17/07.equil.mdout -p Mol17/5m96_Mol17_solv.prmtop -c Mol17/06.equil.rst7 -r Mol17/07.equil.rst7 -inf Mol17/07.equil.info -ref Mol17/06.equil.rst7 -x Mol17/07.equil.traj
pmemd.cuda -O -i 08.equil.mdin -o Mol17/08.equil.mdout -p Mol17/5m96_Mol17_solv.prmtop -c Mol17/07.equil.rst7 -r Mol17/08.equil.rst7 -inf Mol17/08.equil.info -ref Mol17/07.equil.rst7 -x Mol17/08.equil.traj
pmemd.cuda -O -i 09.equil.mdin -o Mol17/09.equil.mdout -p Mol17/5m96_Mol17_solv.prmtop -c Mol17/08.equil.rst7 -r Mol17/09.equil.rst7 -inf Mol17/09.equil.info -ref Mol17/08.equil.rst7 -x Mol17/09.equil.traj
#4 rondas de dinámica molecular
pmemd.cuda -O -i 10.prod.mdin -o Mol17/10.prod_1.mdout -p Mol17/5m96_Mol17_solv.prmtop -c Mol17/09.equil.rst7 -r Mol17/10.prod_1.rst7 -inf Mol17/10.prod_1.info -ref Mol17/09.equil.rst7 -x Mol17/10.prod_1.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol17/10.prod_2.mdout -p Mol17/5m96_Mol17_solv.prmtop -c Mol17/10.prod_1.rst7 -r Mol17/10.prod_2.rst7 -inf Mol17/10.prod_2.info -ref Mol17/10.prod_1.rst7 -x Mol17/10.prod_2.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol17/10.prod_3.mdout -p Mol17/5m96_Mol17_solv.prmtop -c Mol17/10.prod_2.rst7 -r Mol17/10.prod_3.rst7 -inf Mol17/10.prod_3.info -ref Mol17/10.prod_2.rst7 -x Mol17/10.prod_3.traj
pmemd.cuda -O -i 10.prod.mdin -o Mol17/10.prod_4.mdout -p Mol17/5m96_Mol17_solv.prmtop -c Mol17/10.prod_3.rst7 -r Mol17/10.prod_4.rst7 -inf Mol17/10.prod_4.info -ref Mol17/10.prod_3.rst7 -x Mol17/10.prod_4.traj

cd ..


#Final
