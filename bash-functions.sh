#!/bin/bash

#
# Show spinner bar.
# Usage: 
#     long_running_task &
#     show_spinner $!
#
function  show_spinner {
    local delay=0.25

    while [ -d "/proc/${1}" ]; do
        echo -ne '/\b' ; sleep ${delay} 
        echo -ne '-\b' ; sleep ${delay} 
        echo -ne '\\\b' ; sleep ${delay}
        echo -ne '|\b' ; sleep ${delay}
    done

    return 0
}




