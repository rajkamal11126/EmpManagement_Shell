#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRatePerHr=20;

empCheck=$(( RANDOM % 3))

if [ $empCheck -eq $isPresent ]
then

        empHrs=8;
elif [ $isPartTime -eq $empCheck ]
then
        empHrs=4;

else


	empHrs=0;
fi

salary=$(($empHrs*$empRatePerHr));
