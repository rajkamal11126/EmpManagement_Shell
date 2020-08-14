#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRatePerHr=100;
maxHrsInMonth=10;
numWorkingDays=20;
totalSalary=0;
totalWorkingDays=0;

declare -A dailyWage
function empWorkingHrs()
{
        local $empCheck = $1
	case $empCheck in
        	$isFullTime)

        		empHrs=8 ;;
        	$isPartTime)

	        	empHrs=4 ;;
	 	*)

		empHrs=0 ;;
	esac
echo $empHrs

}
function getEmpWage(){
local empHrs=$1
echo $(($empHrs * $empRatepPerHr))
}
while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do

	((totalWorkingDays++))
 	empCheck=$(( RANDOM % 3));
	empHrs="$( empWorkingHrs $empCheck )"
        totalEmpHrs=$(($totalEmpHrs+$empHrs))
	 dailyWage[$totalWorkingDays]="$( getEmpWage $empHrs )"
done
totalSalary=$(($totalEmpHrs*$empRatePerHr))
echo "Daily Wages ${dailyWage[@]}"
echo "Keys ${!dailyWage[@]}"
