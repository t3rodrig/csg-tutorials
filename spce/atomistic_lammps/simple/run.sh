#! /bin/bash -e

#mpiexec -np 8 lmp -sc log.txt -in spce.in

equi=1500 # ps
echo equi = $equi

#echo Calculating distributions
#csg_stat --top topol.xml --trj traj.xtc --cg water.xml --options settings.xml --nt 8 --begin $equi

#csg_stat    --top topol.xml --trj traj.xtc --cg water.xml --options settings.xml --nt 8 --first-frame ${equi}

echo "Mapping confout.pdb to get configuration for coarse-grained run"
csg_map --top topol.xml --trj confout.pdb --cg water.xml --out conf_cg.pdb
