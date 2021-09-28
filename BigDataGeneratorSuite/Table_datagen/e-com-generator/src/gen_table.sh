#!/bin/bash
# $1 is the number of GB to generate
echo "Start generating table data"
let L=$1*140
filePath=$2
outputPath=$3
defaultHdfsFs="$4"
echo "Start generating table data"
java -XX:NewRatio=1 -jar pdgf.jar -l demo-schema.xml -l demo-generation.xml -c -s -sf $L
echo "Finished generating table data"
echo "Start writing table data to HDFS"
java -cp spark-checkpoint-workloads-1.0-SNAPSHOT-jar-with-dependencies.jar \
  de.tu_berlin.dos.arm.spark_utils.datagens.eComHDFSWriter \
  $filePath $outputPath $defaultHdfsFs
echo "Finished writing table data to HDFS"

