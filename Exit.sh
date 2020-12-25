if [[ $# =~ ^-?[0-9]+$ ]] && [[ $num -lt 255 ]] && [[ $num -gt 0 ]]; 
then
	exit $num
else
    	echo "Not a Number" >&2
    	exit 1
fi