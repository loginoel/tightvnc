#!/bin/sh

su usergui -c 'vncserver -geometry 800x600 -geometry 1024x768' && ./utils/launch.sh --vnc localhost:5902
