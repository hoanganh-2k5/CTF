#!/bin/bash
for i in {0..9}; do
pin="4839051${i}"
  echo $pin
  time ./pin_checker <<< "$pin"
done

#48390513