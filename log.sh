function log {
  while read line ; 
  do
    if [[ "$line" = *"(WW)"* && "$line" != *"(WW) warning, (EE) error, (NI) not implemented, (??) unknown."* ]] ; then
      echo -e "${line//"(WW)"/"\033[33mWarning:\033[0m"}"
    fi
  done < "/var/log/anaconda/X.log"
  while read line ; 
  do
    if [[ "$line" = *"(II)"* && "$line" != *"(++) from command line, (!!) notice, (II) informational,"* ]] ; then
      echo -e "${line//"(II)"/"\033[94mInformation:\033[0m"}"
    fi
  done < "/var/log/anaconda/X.log"
}
