exec nitrogen --restore &
#exec compton -b &

dropbox_status_string=""
while true ; do 
    #dropbox_status=$(dropbox-status.sh | head -n 1)
    #if [ "$dropbox_status" == "Up to date" ]; then 
    #    dropbox_status_string="Dropbox: "$(echo $dropbox_status)
    #elif [ "$dropbox_status" == "Dropbox isn't running!" ]; then 
    #    dropbox_status_string="$dropbox_status"
    #else 
    #    dropbox_status_string="Dropbox: "$(echo $dropbox_status|awk -F " " '{print $1}')
    #fi 

    load=$(cat /proc/loadavg |cut -d " " -f 3 )
    uptime=$(uptime -p)
    load_uptime="Load15: ${load} ; ${uptime}"

    xsetroot -name "`date '+%Y-%m-%d %H:%M.%S' ` $load_uptime ; $dropbox_status_string "; sleep 1; 
done &
#exec mv ~/.dropbox-dist/dropbox.log ~/.dropbox-dist/dropbox.log.old  & 
#exec ~/.dropbox-dist/dropboxd >> ~/.dropbox-dist/dropbox.log 2>&1  & 
exec /opt/dwm/dwm

