function calc {
if ! (echo "$2" | grep -E -q "^[-+]?[0-9]+$") || ! (echo "$3" | grep -E -q "^[-+]?[0-9]+$")
then
       echo "chisla durik!" >&2;
       exit 1
fi
case $1 in
"sum") echo $(($2 + $3))
;;
"sub") echo $(($2 - $3))
;;
"mul") echo $(($2 * $3))
;;
"div") if [[ $3 == "0" || $3 == "-0" || $3 == "+0" ]]
then
       echo "durah na 0 delit?" >&2;
       else
       echo $($2 / $3);
       fi
;;
*) echo "ne znayu takih deystviy" >&2
;;
esac
}
