#!/bin/bash

echo "Starting VNC Server..."
vncserver -geometry 1920x1080 -depth 24 :1 -verbose

sleep 2

echo "Starting noVNC..."
websockify -D --web=/usr/share/novnc/ 6080 127.0.0.1:5901

echo "✓ VNC চালু হয়েছে"
echo "✓ noVNC চালু হয়েছে"

sleep infinity
