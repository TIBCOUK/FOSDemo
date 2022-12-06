echo """"""""
cat /proc/cpuinfo
echo -e "\n\n"
cat /proc/meminfo
echo -e "\n\n"

echo "ulimit -a"
ulimit -a


while [ true ]
do
        now=`date "+%m/%d/%y:%H:%M:%S"`
	
	 echo -e "\n\n $now  ---top output--- \n\n"
         top -H -n 1 -p $1
                
         echo -e "\n\n$now ---vmstat output--- \n"
         vmstat 1 5
       
         echo -e "\n\n $now ---iostat -d -x output--- \n"         
         iostat -d -x 1 5
         echo -e "\n\n"
         
         echo -e "\n\n $now ---iostat -c output--- \n" 
         iostat -c 1 5

         echo -e "\n\n -----mpstat -P ALL 1 1000---- \n"
         mpstat -P ALL 1 1000
         
  sleep 3

done;
