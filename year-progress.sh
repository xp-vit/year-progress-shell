#!/usr/bin/env zsh
currentYear=$(date +"%Y")

EndYear=$(date -d "$currentYear/12/31 23:59:59" +"%s")
StartYear=$(date -d "$currentYear/1/1 00:00:00" +"%s")

Current=$(date +"%s")
Current=$Current+".1"

printf '%.2f percent of the year is gone. Hurry up with your plans!\n' "$(( (Current - StartYear)*100/(EndYear - StartYear) ))"
