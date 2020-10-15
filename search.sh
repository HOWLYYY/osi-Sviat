function search {
    if ! [[ -d $1 ]] || ! [[ -e $1 ]] ;
    then
        echo "Directory doesn't exist"
        exit 1
    fi
    if ! [[ -r $1 ]] ;
    then
        echo "Can't read file"
        exit 1
    fi
    grep -rs $2 $1 
  }
