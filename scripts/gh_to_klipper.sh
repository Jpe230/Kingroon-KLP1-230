#!/bin/sh


mkdir ~/printer_data/config/backups

dt=$(date +%Y%m%d)

for file in ~/printer_data/config/*
do
    if [ -f "${file}" ]; then
        name=$(basename ${file})
        filename=${name%.*}
        ext=${name#*.}
        mv ~/printer_data/config/${name} ~/printer_data/config/backups/${filename}_${dt}.${ext}
    fi
done
cp ../config/* ~/printer_data/config/
