
#!/bin/bash -x

betAmount=1
day=0
echo  "starting the  game"
while [[ $day -lt 20 ]]
do
totalAmount=100
for(( i=0; (( $totalAmount < 150 )) && (( $totalAmount > 50 )); i++ ))
do
betResult=$(( (RANDOM%2) +1 ))
if [ $betResult -eq 1 ]
  then
      ((totalAmount++));
  else
      ((totalAmount--));
fi
done
((day++))

if [ $totalAmount -eq 150 ]
then
  echo "Gambler stopped and won for day"$day" amount !!" $totalAmount
elif [ $totalAmount -eq 50 ]
  then
echo "Gambler stopped and lost for day"$day" amount  !!" $totalAmount
fi
done
