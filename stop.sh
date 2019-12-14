kill $(ps -ef | grep keosd | awk '{print $2}' | head -1)
kill $(ps -ef | grep nodeos | awk '{print $2}' | head -1)
