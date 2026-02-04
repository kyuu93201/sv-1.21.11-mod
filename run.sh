#!/bin/bash
while true
do
    echo "--- Dang khoi chay Server Mod 1.21.1 ---"
    
    # 1. Ban nen tang RAM len neu may co du (vi du -Xmx6G)
    # 2. Thay 'server.jar' bang ten file thuc te (vi du: forge-1.21.1.jar)
    
    java -Xmx4G -Xms3G \
    -XX:+UseG1GC \
    -XX:+ParallelRefProcEnabled \
    -XX:MaxGCPauseMillis=200 \
    -XX:+UnlockExperimentalVMOptions \
    -XX:+DisableExplicitGC \
    -XX:+AlwaysPreTouch \
    -XX:G1NewSizePercent=30 \
    -XX:G1MaxNewSizePercent=40 \
    -XX:G1HeapRegionSize=8M \
    -XX:G1ReservePercent=20 \
    -XX:G1HeapWastePercent=5 \
    -XX:G1MixedGCCountTarget=4 \
    -XX:InitiatingHeapOccupancyPercent=15 \
    -XX:G1MixedGCLiveThresholdPercent=90 \
    -XX:G1RSetUpdatingPauseTimePercent=5 \
    -XX:SurvivorRatio=32 \
    -XX:+PerfDisableSharedMem \
    -XX:MaxTenuringThreshold=1 \
    -Dusing.aikars.flags=https://mcflags.emc.gs \
    -Daikars.new.flags=true \
    -jar server.jar nogui

    echo "--- Server dung. Cho 5s de khoi dong lai (Ctrl+C de huy) ---"
    sleep 5
done