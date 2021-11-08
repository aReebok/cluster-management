#!/bin/bash

for prog in ompi-checkpoint ompi-clean ompi_info ompi-ps ompi-restart ompi-server opal_wrapper ortec++ orted orte-ps orterun ortecc orte-clean orte-iof ompi-clean ompi_info ompi-iof ompi-ps ompi-server mpic++ mpicc mpiCC mpiczz mpiexec mpif77 mpirun 
do
    echo update-alternatives --install \"/usr/bin/${prog}\" \"$prog\" \"/usr/lib/openmpi/bin/${prog}\"
    
done
echo Program completed

