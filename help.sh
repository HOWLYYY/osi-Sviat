function help {
    
    case $1 in
    calc )
        echo "calc sum/sub/mul/div and 2 numbers"
    ;;
    search )
        echo "search then directory then what to search"
    ;;
    reverse )
        echo "reverse then infile then outfile"
    ;;
    strlen )
        echo "strlen then the string itself"
    ;;
    interactive )
        echo "interactive and press enter"
    ;;
    "exit" )
        echo "exit and exit code"
    ;;
    *) echo "Use commands calc/search/reverse/strlen/interactive/exit"
    ;;
    esac
}
