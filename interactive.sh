function interactive {
  while true :
  do
      echo "Enter the command:
      a) Calc
      b) Search
      c) Reverse
      d) Strlen
      e) Log
      f) Help
      g) Exit"
  read smth
  case $smth in
      a )
      echo "Enter action and numbers"
      read act a b
      if [[ -e "calc.sh" ]] ; 
      then
           . ./calc.sh
          calc $act $a $b
      elif ! [[ -r "calc.sh" ]] ;
      then
          echo "Ne chitaetsa Calc.sh" >&2
      else
          echo "Gde Calc.sh?" >&2
      fi
      ;;
      b )
      echo "Enter directory :"
      read dir
      echo "Enter Expression :"
      read exp
      if [[ -e "search.sh" ]] ; 
      then
          . ./search.sh
          search $dir $exp
      elif ! [[ -r "search.sh" ]] ;
      then
          echo "Ne chitaetsa Search.sh" >&2
      else
          echo "Gde Search.sh?" >&2
      fi
      ;;
      c )
      echo "Infile"
      read inf
      echo "Outfile"
      read outf
      if [[ -e "reverse.sh" ]] ; 
      then
          . ./reverse.sh
          reverse $inf $outf
      elif ! [[ -r "reverse.sh" ]] ;
      then
          echo "Ne chitaetsa Reverse.sh" >&2
      else
          echo "Gde Reverse.sh?" >&2
      fi
      ;;
      d )
      echo "Enter string :"
      read str
      echo ${#str}
      ;;
      e )
      if [[ -e "log.sh" ]] ;
      then
          . ./log.sh
          log
      elif ! [[ -r "log.sh" ]] ;
      then
          echo "Ne chitaetsa Log.sh" >&2
      else
          echo "Gde Log.sh?" >&2
      fi
    ;;
    f )
    echo "Enter function"
    read num
    if [[ -e "help.sh" ]] ;
    then
        . ./help.sh
        help $num
    elif ! [[ -r "help.sh" ]] ;
    then
        echo "Ne chitaetsa Help.sh" >&2
    else
        echo "Gde Help.sh?" >&2
    fi
    ;;
    g )
    echo "Enter exit code"
    read num
    if [[ -n $num ]] ; 
    then
        if (echo "$num" | grep -E -q "^-?[0-9]+$");
        then
            if [[ $num -gt 255 ]] || [[ $num -lt 0 ]]; 
            then
                echo "Exit number must be in (0, 255)" >&2
                exit 1
            fi
            exit $num
        else
            echo "Not a Number" >&2
            exit 1
        fi
    else
        exit 0    
    fi
    ;;
    * )
    echo "There is no such command"
    ;;
    esac
  done
}
