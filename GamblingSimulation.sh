
#!/bin/bash -x

totalAmount=100
betAmount=1
#read -p "Enter the times" n
for(( i=0; $totalAmount<150 && $totalAmount>0; i++ ))
do
betResult=$(( (RANDOM%2) +1 ))
if [ $betResult -eq 1 ]
  then
      ((totalAmount++));
  else
      ((totalAmount--));
fi
done
if [ $totalAmount -ge 150 ]
then
  echo "Gambler stopped and won !!" $totalAmount
elif [ $totalAmount -le 50 ]
  then
echo "Gambler stopped and lost !!" $totalAmount
fi

