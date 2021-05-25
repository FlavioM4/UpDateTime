#!/bin/bash
# Array of months to associate given month to its number
declare -A months
months=([Jan]=01 [Feb]=02 [Mar]=03 [Apr]=04 [May]=05 [Jun]=06 [Jul]=07 [Aug]=08 [Sep]=09 [Oct]=10 [Nov]=11 [Dec]=12)
# Get current system date
currentDate=$(date)
cD=$(date "+%d") # Current day
cM=$(date "+%m") # Current month
cY=$(date "+%Y") # Current year
cH=$(date "+%H") # Current hour
cMin=$(date "+%M") # Current minutes
cSec=$(date "+%S") # Current Seconds
# Get online date (with -1H) from Google
getdate=$(curl -s --head www.google.pt | grep Date)
DAY=$(echo $getdate | cut -d ' ' -f3)
echo $DAY
MONTH=$(echo $getdate | cut -d ' ' -f4)
echo $MONTH
YEAR=$(echo $getdate | cut -d ' ' -f5)
HR=$(echo $getdate | cut -d ' ' -f6 | cut -d ':' -f1 )
MN=$(echo $getdate | cut -d ' ' -f6 | cut -d ':' -f2 )
SC=$(echo $getdate | cut -d ' ' -f6 | cut -d ':' -f3 )
# Get month number from array
MONTHNR=${months[$MONTH]}
# Set correct hour
let rHR=$HR+1
#Format to use with date --set
formatted="$YEAR$MONTHNR$DAY $rHR:$MN:$SC"
echo $formatted
#Validations between system retrieved time and google retrieved time
if [ $cD != $DAY ] || [ $cH != $rHR ] || [ $cY != $YEAR ] || [ $cM != $MONTHNR ]
then
	echo "Retrieved times didn't match, updating System Time"
	date --set="$formatted"
fi

