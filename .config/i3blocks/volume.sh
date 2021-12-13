#!/bin/bash
str=$(pactl get-sink-mute @DEFAULT_SINK@)
vol=($(pactl get-sink-volume @DEFAULT_SINK@))
#echo ${vol[4]}
mute=($str)
#echo ${mute[1]}
vol_num=$(awk -F'%' '{print $1}' <<< "${vol[4]}")
#echo $vol_num
if [ "${mute[1]}" = "yes" ] 
then
    label="🔇"
else 
    if [ $vol_num -le 30 ]
        then 
            label="🔈"
        elif [ $vol_num -le 70 ] 
        then
            label="🔉"
        else
            label="🔊"
    fi

fi


echo $label${vol[4]}
