function calc {
if [[ $2 =~ ^[-+]?[0-9]+$ ]] && [[ $3 =~ ^[-+]?[0-9]+$ ]]
then
       echo "chisla durik!" >&2;
       exit 1
fi
case $1 in
"sum") 
       sum=$(($2 + $3))
       echo $sum
;;
"sub") 
       sub=$(($2 - $3))
       echo $sub
;;
"mul") 
       mul=$(($2 * $3))
       echo $mul
;;
"div") if [[ $3 == "0" || $3 == "-0" || $3 == "+0" ]]
then
       echo "durah na 0 delit?" >&2;
       else
              div=$(($2 / $3)
              echo $div
       fi
;;
*) echo "ne znayu takih deystviy" >&2
;;
esac
}
