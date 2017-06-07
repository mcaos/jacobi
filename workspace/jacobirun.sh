#!/bin/bash

# JACOBI SETTINGS
MAX_ITER=100
EPS=0.001
N_VALS=(5000 10000 15000 30000)
HEADER = "nw,it,comp_t,upd_t,conv_t,latency,error"

# WORKERS SETTINGS
if [[ "$1" == "MIC" ]]
then
    echo -n "Running on MIC"
    nw=240
    WORKER_STEPS=16
else
    echo -n "Running on HOST"
    nw=16
    WORKER_STEPS=4
fi

echo " with $nw max. workers"

for N in "${N_VALS[@]}"
do    
    # FILES
    if [[ "$1" == "MIC" ]]
    then
	RES_FF_FILE="results/es_ff_mic_$N.csv"
	RES_SEQ_FILE="results/res_seq_mic_$N.csv"
	RES_PT_FILE="results/res_pt_mic_$N.csv"
    else
	RES_FF_FILE="results/res_ff_host_$N.csv"
	RES_SEQ_FILE="results/res_seq_host_$N.csv"
	RES_PT_FILE="results/res_pt_host_$N.csv"
    fi
    echo "N = $N"
    
    echo -n "Running sequential ... "
    echo $HEADER  > $RES_SEQ_FILE
    if [[ "$1" == "MIC" ]]
    then
	ssh mic1 "bin/jacobim $N $MAX_ITER $EPS s" >> $RES_SEQ_FILE
    else
	bin/jacobix $N $MAX_ITER $EPS s >> $RES_SEQ_FILE
    fi
    echo "Done"
    
    echo "Running fast-flow"
    echo $HEADER  > $RES_FF_FILE
    for i in 1 2 $(seq 4 $WORKER_STEPS $nw)
    do
	echo -n "Working with $i ... "
	if [[ "$1" == "MIC" ]]
	then
	    ssh mic1 "bin/jacobim $N $MAX_ITER $EPS f $i" >> $RES_FF_FILE
	else
	    bin/jacobix $N $MAX_ITER $EPS f $i >> $RES_FF_FILE
	fi
	echo "Done"
    done
	     
    echo "Running pthread"
    echo $HEADER > $RES_PT_FILE
    for i in 1 2 $(seq 4 $WORKER_STEPS $nw)
    do
	echo -n "Working with $i ... "
        if [[ "$1" == "MIC" ]]
	then
	    ssh mic1 "bin/jacobim $N $MAX_ITER $EPS p $i" >> $RES_PT_FILE
	else
	    bin/jacobix $N $MAX_ITER $EPS p $i >> $RES_PT_FILE
        fi
	echo "Done"
    done
done