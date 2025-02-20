#!/bin/bash

################################################################################## Input parameters
###################################################################################################

case_id="CRUK0048"
prefix="CRUK"
scriptDir=`pwd`"/src/"
inputTSV=`pwd`"/data/input_tsv.tsv"
outDir=`pwd`"/results/"


###################################################################### Running treebuilding wrapper
###################################################################################################

# conda activate conipher

Rscript ${scriptDir}run_treebuilding.R \
--input_tsv_loc ${inputTSV} \
--out_dir ${outDir} \
--prefix ${prefix}

# conda deactivate


############################################################################################### End
###################################################################################################
