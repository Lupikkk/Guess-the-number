#!/bin/bash

echo -n "Минимум: "; read min
echo -n "Максимум: "; read max

range=$((max - min + 1))
target=$((RANDOM % range + min))
attempts=0

while true; do
  echo -n "Ваш вариант: "; read guess
  attempts=$((attempts+1))
  if (( guess == target )); then
    echo "Правильно! Загаданное число: $target. Попыток: $attempts"
    break
  elif (( guess < target )); then
    echo "Загаданное число больше."
  else
    echo "Загаданное число меньше."
  fi
done
echo "Путь к скрипту: $(dirname "$0")"
