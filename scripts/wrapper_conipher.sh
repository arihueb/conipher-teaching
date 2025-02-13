#!/bin/bash

################################################################################## Input parameters
###################################################################################################

case_id="CRUK0048"
prefix="CRUK"
scriptDir=`pwd`"/src/"
inputTSV=`pwd`"/data/input_tsv.tsv"
outDir=`pwd`"/results/"


############################################################### Running clustering and treebuilding
###################################################################################################

# conda activate conipher

Rscript ${scriptDir}run_conipher.R \
--case_id ${case_id} \
--prefix ${prefix} \
--out_dir ${outDir} \
--input_tsv_loc ${inputTSV} \

# conda deactivate


############################################################################################### End
###################################################################################################
