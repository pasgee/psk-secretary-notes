#!/bin/bash
# Get calendar information for today
# Assumes iCalendar file is available
CALENDAR_FILE="calendar.ics"

if [ -f "$CALENDAR_FILE" ]; then
  EVENTS=$(grep "BEGIN:VEVENT" "$CALENDAR_FILE" -A 100 | grep "SUMMARY:" | sed -e 's/SUMMARY://g' | sed -e 's/\r//g' | sed -e 's/^ *//g' | paste -sd ", ')
  if [ -n "$EVENTS" ]; then
    echo "오늘의 일정: $EVENTS"
  else
    echo "오늘의 일정이 없습니다."
  fi
else
  echo "캘린더 파일을 찾을 수 없습니다."
fi