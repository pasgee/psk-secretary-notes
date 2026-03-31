#!/bin/bash
# Get weather information for Seoul Mangwon-dong
WEATHER=$(curl -s "https://wttr.in/Mangwon-dong?format=%c+%t")
echo "오늘의 망원동 날씨: $WEATHER"