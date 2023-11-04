while true
do
    pgrep 'spotify' | echo {\"text\": \" $(playerctl metadata --format "{{ title }} - {{ artist }}")\", \"alt\": \"test alt\", \"tooltip\": \"test tooltip\", \"class\": \"test-class\", \"percentage\": \"69%\"}
    sleep 0.4
done