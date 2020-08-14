#!/bin/bash -x

isPresent=1;
empCheck=$(( RANDOM % 2))

if [ $empCheck -eq $isPresent ]
then
        echo "Employee is Present "
	empRatePerHr=20;
        empHrs=8;
        salary=$(( $empRatePerHr*$empHrs ))
else

        echo "Employee is Absent"
	salary=0;
fi
