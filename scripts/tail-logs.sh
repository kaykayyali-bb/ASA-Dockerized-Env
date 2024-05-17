#!/bin/bash

PS3="Select a server to tail logs for: "
select Server in asa-server-1 asa-server-2 asa-server-3 Quit
do
    case $Server in
        Quit)
            break
            ;;
        *)
            docker exec -it $Server tail -f server-files/ShooterGame/Saved/Logs/ShooterGame.log
            break
            ;;
    esac
done

