#!/bin/bash
sudo find /private/var/folders/ -type d -name com.apple.dock.launchpad -exec rm -rf {} + 2>/dev/null
killall Dock

