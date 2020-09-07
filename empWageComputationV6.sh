#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRatePerHr=10;
maxHrsInMonth=100;
numWorkingDays=20;
totalSalary=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
	empCheck=$(( RANDOM % 3))
	case $empCheck in
        	$isFullTime)

        		empHrs=8;
        	$isPartTime)

	        	empHrs=4;
	 	*)

		empHrs=0;
	esac
totalEmpHrs=$(($totalEmpHrs+$empHrs))


done
totalSalary=$(($totalEmpHrs*$empRatePerHr))
