#!/bin/bash

JAVA_XMS="128m"
JAVA_XMX="128m"

#LOCAL='pwd'

JAVA_OPTS="$JAVA_OPTS -XX:+ExitOnOutOfMemoryError"
JAVA_OPTS="$JAVA_OPTS -XX:+HeapDumpOnOutOfMemoryError"
#JAVA_OPTS="$JAVA_OPTS -XX:HeapDumpPath=heapdump.hprof"

#JAVA_OPTS="$JAVA_OPTS -XX:+PrintGCDetails"
#JAVA_OPTS="$JAVA_OPTS -XX:+PrintAdaptiveSizePolicy"
#JAVA_OPTS="$JAVA_OPTS -XX:+PrintGCDateStamps"
#JAVA_OPTS="$JAVA_OPTS -XX:+PrintTenuringDistribution"
#JAVA_OPTS="$JAVA_OPTS -XX:+UseGCLogFileRotation"
#JAVA_OPTS="$JAVA_OPTS -XX:NumberOfGCLogFiles=10"
#JAVA_OPTS="$JAVA_OPTS -XX:GCLogFileSize=100M"
#JAVA_OPTS="$JAVA_OPTS -Xloggc:$LOCAL/log/gc_demo_%t.log"

JAVA_OPTS="$JAVA_OPTS -Xms$JAVA_XMS"
JAVA_OPTS="$JAVA_OPTS -Xmx$JAVA_XMX"

FULL_COMMAND="java $JAVA_OPTS -jar build/libs/leak-demo-0.0.1-SNAPSHOT.jar com.apakhomov.leakdemo.Application"

eval "${FULL_COMMAND}"
