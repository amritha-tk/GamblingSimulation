
#!/bin/bash -x

totalAmount=100
betAmount=1

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

if [ $totalAmount -eq 150 ]
 then
    echo "Gambler stopped and won !! and the amount" $totalAmount
 elif [ $totalAmount -eq 50 ]
  then
    echo "Gambler stopped and lost !! and the amount" $totalAmount
fi

