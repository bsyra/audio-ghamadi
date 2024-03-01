#!/bin/bash

urls=(
    "http://quran.ksu.edu.sa/ayat/download/Ghamadi_40kbps/Ghamadi_40kbps_1-3.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Ghamadi_40kbps/Ghamadi_40kbps_4-6.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Ghamadi_40kbps/Ghamadi_40kbps_7-9.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Ghamadi_40kbps/Ghamadi_40kbps_10-12.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Ghamadi_40kbps/Ghamadi_40kbps_13-15.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Ghamadi_40kbps/Ghamadi_40kbps_16-18.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Ghamadi_40kbps/Ghamadi_40kbps_19-21.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Ghamadi_40kbps/Ghamadi_40kbps_22-24.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Ghamadi_40kbps/Ghamadi_40kbps_25-27.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Ghamadi_40kbps/Ghamadi_40kbps_28-30.ayt"
)

for url in "${urls[@]}"; do
    wget "$url"
    
    file_name=$(basename "$url")
    
    unzip "$file_name"
    rm "$file_name"
done
