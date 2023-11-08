while true
do
    # echo {\"text\": \"Nothing is playing right now!\", \"alt\": \"Player\", \"tooltip\": \"Player\", \"class\": \"player-display\", \"percentage\": \"1%\"}
    # echo "$(playerctl metadata --format '{{ title }} - {{ artist }}')"
    if [[ "$(playerctl metadata --format '{{ title }} - {{ artist }}')" != "" ]] 
    then
        echo "{\"text\": \"$(playerctl metadata --format "{{ title }} - {{ artist }}")\", \"alt\": \"Player\", \"tooltip\": \"Player\", \"class\": \"player-display\", \"percentage\": \"1%\"}"
    else
        echo "{\"text\": \"Nothing is playing right now!\", \"alt\": \"Player\", \"tooltip\": \"Player\", \"class\": \"player-display\", \"percentage\": \"1%\"}"
    fi
    sleep 0.4
done