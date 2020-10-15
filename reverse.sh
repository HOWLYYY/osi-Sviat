function reverse {
    if ! [[ -e $1 ]] ; 
    then
      echo "There is no file $1" >&2
      exit 1
    fi
    if [[ -d $1 ]] ;
    then
        echo "$1 is a directory"
        exit 1
    fi
    if ! [[ -r $1 ]] ;
    then
      echo "You can't read file $1" >&2
      exit 1
    fi
    if [[ -d $2 ]] ;
    then
        echo "$2 is a directory"
        exit 1
    fi
    if [[ -f $2 ]] && ! [[ -w $2 ]] ; 
    then
      echo "You can't access file $2" >&2
      exit 1
    fi
    if [[ $1 == $2 ]] ;
    then
        echo -n > temp.txt
        cat $1 > temp.txt
        rev temp.txt > $2
    else
        rev $1 > $2
    fi
}
