echo "length"
read count
 
first=0
 

second=1
  
echo "Fibonacci : "
  
for (( i=0; i<count; i++ ))
do
    echo -n "$first "
    fn=$((first + second))
    first=$second
    second=$fn
done