#!/bin/bash
set -e

cp /analysis_crash/WhyDidTheAnalysisCrash.txt .

#run thing
python /scripts/ocsi2.py "${@:1}"

#wrap up output and kick out tempfile
tar -rf FullOutput.tar *
rm WhyDidTheAnalysisCrash.txt
