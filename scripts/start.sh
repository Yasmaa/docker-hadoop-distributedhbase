#!/bin/bash -x
service ssh start



ZOO_CFG="/usr/local/zookeeper/conf/zoo.cfg"

# Check if the config file exist before starting
while [ ! -f ${ZOO_CFG} ]
do
  echo "The ${ZOO_CFG} does not exist.  Waiting..."
  sleep 5
done

# Start Zookeeper
/usr/local/zookeeper/bin/zkServer.sh start-foreground

