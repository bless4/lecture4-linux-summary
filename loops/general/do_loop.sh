count=1
until [ $count -gt 5 ]
do
  echo "Iteration $count"
  ((count++))
done
