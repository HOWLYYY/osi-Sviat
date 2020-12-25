#!/bin/bash

case $1 in
calc )
if [[ $# == 4 ]] ; 
then
    if [[ -e "calc.sh" ]] ; 
    then
         . ./calc.sh
        calc $2 $3 $4
    elif ! [[ -r "calc.sh" ]] ;
    then
        echo "Ne chitaetsa Calc.sh" >&2
    else
        echo "Gde Calc.sh?" >&2
    fi
else
    echo "3 argumenta" >&2
    . ./help.sh
    help calc
fi
;;
search )
if [[ $# -gt 2 ]] ; 
then
    if [[ -e "search.sh" ]] ; 
    then
        . ./search.sh
        search $2 $3
    elif ! [[ -r "search.sh" ]] ;
    then
        echo "Ne chitaetsa Search.sh" >&2
    else
        echo "Gde Search.sh?" >&2
    fi
else
    echo "Chego iskat to?" >&2
    . ./help.sh
    help search
fi
;;
reverse )
if [[ $# -gt 2 ]] ; 
then
   if [[ -e "reverse.sh" ]] ; 
    then
        . ./reverse.sh
        reverse $2 $3
    elif ! [[ -r "reverse.sh" ]] ;
    then
        echo "Ne chitaetsa Reverse.sh" >&2
    else
        echo "Gde Reverse.sh?" >&2
    fi
else
    echo "na,vosmi pomosh" >&2
    . ./help.sh
    help reverse
fi
;;
strlen )
    if [[ $# -gt 1 ]] ; 
    then
        echo ${#2}
    else
        echo "Gde simvoly?" >&2
        . ./help.sh
        help strlen
    fi
;;
help )
    if [[ -e "help.sh" ]] ;
    then
        . ./help.sh
        help $2
    elif ! [[ -r "help.sh" ]] ;
    then
        echo "Ne chitaetsa Help.sh" >&2
    else
        echo "Gde Help.sh?" >&2
    fi
;;
log )
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
interactive )
    if [[ -e "interactive.sh" ]] ;
    then
        . ./interactive.sh
        interactive
    elif ! [[ -r "interactive.sh" ]] ;
    then
        echo "Ne chitaetsa Interactive.sh" >&2
    else
        echo "Gde Interactive.sh?" >&2
    fi
;;
Exit )
if [[ $# -gt 1 ]] ; 
then
    if [[ -e "Exit.sh" ]] ;
    then 
        . ./Exit.sh
        Exit $2
    elif ! [[ -r "Exit.sh" ]] ;
    then 
        echo "Ne chitaetsa Exit.sh" >&2
    else
        echo "Gde Exit.sh?" >&2
    fi
else
    echo "Na pomosh" >&2
    . ./help.sh
    help Exit
fi
;;
* )
    echo "No such command" >&2
    . ./help.sh
    help
    exit 1
;;
esac
