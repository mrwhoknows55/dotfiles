#!/bin/sh
adb kill-server
adb start-server
adb tcpip 6969
