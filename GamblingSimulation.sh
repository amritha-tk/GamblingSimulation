
#!/bin/bash -x


DAY=0
MAXDAY=30
MAX_STAKE=150
MIN_STAKE=50
echo  "starting the  game"
while [[ $DAY -lt MAXDAY ]]
 do
  TOTAL_AMOUNT=100
  for(( i=0; (( $TOTAL_AMOUNT < MAX_STAKE )) && (( $TOTAL_AMOUNT > MIN_STAKE )); i++ ))
    do
      betResult=$(( (RANDOM%2) +1 ))
       if [ $betResult -eq 1 ]
         then
            ((TOTAL_AMOUNT++));
        else
            ((TOTAL_AMOUNT--));
       fi
  done
  ((DAY++))


  if [ $TOTAL_AMOUNT==MAX_STAKE ]
    then
        result="won"
  elif [ $TOTAL_AMOUNT==MIN_STAKE ]
    then
       result="lost"
   fi
      echo "Gambler stopped and " $result " for day"$DAY" amount  !!" $TOTAL_AMOUNT
done
