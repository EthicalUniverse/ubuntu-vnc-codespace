#!/bin/bash

echo "Starting VNC Server..."
vncserver -geometry 1920x1080 -depth 24 :1

echo "Waiting 2 seconds..."
sleep 2

echo "Starting noVNC..."
websockify -D --web=/usr/share/novnc/ 6080 localhost:5901

echo "✓ VNC Server চালু হয়েছে"
echo "✓ noVNC চালু হয়েছে"
echo "ব্রাউজারে যান: http://localhost:6080/vnc.html"

tail -f /dev/null
