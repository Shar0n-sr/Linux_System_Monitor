#/bin/bash
current_date=$(date +"%d-%m-%Y")
current_time=$(date +"%I:%M:%S")

echo " Date: "${current_date}"\n Time: "${current_time}
echo "\nUptime\n"$(uptime -p)
echo "\nMemory Usage:\n" 
free -h | awk 'NR==1 {printf "%16s%12s%12s\n", $1, $2, $3} NR==2 {printf "%-0s%12s%12s%12s\n", $1, $2, $3, $4}'
echo  "\nDisk Space\n\t"
df -h|awk 'NR==1 {print $1,$2,$3,$4} NR==4 {print $1,$2,$3,$4}' | column -t


