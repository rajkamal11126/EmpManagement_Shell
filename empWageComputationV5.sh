#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
numWorkingDays=20;
totalSalary=0;

for (( i=1; i<=$numWorkingDays; i++ ))
do
	empCheck=$(( RANDOM % 3))
	case $randomCheck in
        	$isFullTime)

        		empHrs=8;
        	$isPartTime)

	        	empHrs=4;
	 	*)

		empHrs=0;
esac

salary=$(($empRatePerHr*$empHrs));
totalSalary=$(($totalSalary+$salary));

done
