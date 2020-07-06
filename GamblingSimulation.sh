
#!/bin/bash -x

totalAmount=100
betAmount=1
betResult=$(( (RANDOM%2) +1 ))

if [ $betResult -eq 1 ]
  then
      ((totalAmount++));
       echo "Gambler won" $totalAmount
  else
      ((totalAmount--));
       echo "Gambler loss" $totalAmount
fi
