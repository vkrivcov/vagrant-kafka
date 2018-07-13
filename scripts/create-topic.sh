#!/bin/bash

if [ $# -gt 2 ]; then
    $KAFKA_HOME/bin/kafka-topics.sh --zookeeper vkc-zk1:2181 --topic $1 --create --replication-factor $2 --partitions $3 
else
    echo "Usage: "$(basename $0)" <topic_name> <replication-factor> <partitions>"
fi

