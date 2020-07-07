#!/bin/bash

DAY=0
MAXDAY=30
MAX_STAKE=1.5
MIN_STAKE=0.5
dayStart=0
dayIncrement=100
max_Win=0
max_Loss=0

echo  "Starting the  game"

function MonthCalculation()

  {
	while [[ $DAY -lt MAXDAY ]]
	 do
	  dayStart=$(( $dayIncrement + $dayStart ))
	  percentMaxStake=$(($dayStart*3/2 ))
	  percentMinStake=$(($dayStart/2 ))

		for(( i=0; (( $dayStart <  $percentMaxStake )) && (( $dayStart > $percentMinStake )); i++ ))
		 do
		    betResult=$(( (RANDOM%2) +1 ))
		    if [ $betResult -eq 1 ]
			 then
				((dayStart++));
			else
				((dayStart--));
		   fi
	     done
	  ((DAY++))

		   if [ $dayStart == $percentMaxStake ]
			then
			  result="won"
			  dayProfit=$(($dayStart))

			  if [ $dayProfit -gt $max_Win ]
			    then
				 max_Win=$(($dayProfit))
				 max_Win_Day=$(($DAY))
			  fi
		   elif [ $dayStart == $percentMinStake ]
			 then
			   result="lost"
			   dayLoss=$dayStart

			   if [ $dayLoss -gt $max_Loss ]
				 then
				  max_Loss=$(($dayLoss))
				  max_Loss_Day=$(($DAY))
			   fi
		   fi
			echo "Gambler stopped and " $result " for day"$DAY" amount  !!" $dayStart
	done

	echo " For the Month -- Maximum Won amount is " $max_Win "on Day:" $max_Win_Day "and Maximum Lost amount " $max_Loss " on Day:" $max_Loss_Day

  }

MonthCalculation

