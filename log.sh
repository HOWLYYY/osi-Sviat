function log {
    log="/var/log/anaconda/X.log"
    check=0

    [ ! -e $log ] && echo "No log file" && let $check=1
    [ ! -r $log ] && echo "No rights for reading log file" && let $check=1

    if [ $check -eq 0 ]
    then
      lines=$(cat $log)
      for line in $lines
      do
      if [[ "$line" == *"WW"* && "$line" != *"(WW) warninig, (EE) error, (NI) not implemented, (??) unknown" ]]
      then
        echo -e ${line//"(WW)"/"\033[33mWarning: \033[0m"}
      fi
      done
      for line in $lines
      do
      if [[ "$line" == *"(II)"* && "$line" != *"(++) from command line, (!!) notice, (II) informational,"* ]]
      then
      echo -e ${line//"(II)"/"\033[36mInformation: \033[0m"}
      fi
      done
    fi
}
