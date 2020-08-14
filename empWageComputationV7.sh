#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRatePerHr=100;
maxHrsInMonth=10;
numWorkingDays=20;
totalSalary=0;
totalWorkingDays=0;

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
while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do

	((totalWorkingDays++))
 	empCheck=$(( RANDOM % 3));
	empHrs="$( empWorkingHrs $empCheck )"
        totalEmpHrs=$(($totalEmpHrs+$empHrs))

done
totalSalary=$(($totalEmpHrs*$empRatePerHr))
