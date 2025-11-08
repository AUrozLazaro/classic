#!/bin/bash
cd /home/user/classic

SESSION_NAME="lineage"

# Start tmux session if it doesn't exist
tmux has-session -t $SESSION_NAME 2>/dev/null

if [ $? != 0 ]; then
    tmux new-session -d -s $SESSION_NAME
fi

# Run the server inside tmux
tmux send-keys -t $SESSION_NAME "java -Djava.awt.headless=true \
-Xms256m -Xmx320m -Xss512k \
-XX:+UseSerialGC \
-XX:MetaspaceSize=32m -XX:MaxMetaspaceSize=64m \
-XX:SurvivorRatio=8 -XX:MaxTenuringThreshold=4 \
-XX:+UseStringDeduplication -XX:+DisableExplicitGC \
-cp 'l1jen.jar:lib/*' l1j.server.Server" C-m
