#!/bin/bash

## This script is called to copy all ressources
## Destination is basicly the output/ module
## The output module is the document-root of what is served on deployment

mkdir -p output/font
mkdir -p output/img
mkdir -p output/video

## app files
cp sources/ressources/font/* output/font/
cp sources/ressources/img/* output/img/
cp sources/ressources/video/* output/video/

cp sources/ressources/favicon/* output/
cp sources/ressources/manifest/* output/

cp sources/ressources/.htaccess output/

cp sources/ressources/oegia_statuten.pdf output/
cp sources/ressources/oegia_empfohlene_lernunterlagen.pdf output/
cp sources/ressources/Beitrittsformular.pdf output/
cp sources/ressources/Datenschutzerklaerung.pdf output/
cp sources/ressources/flyer_webinar_dez_9_21.pdf output/
cp sources/ressources/esvm_2022.pdf output/
cp sources/ressources/thrombosedialog_2022.pdf output/
cp sources/ressources/iua_course_2022.pdf output/
cp sources/ressources/euro_thrombosis_2022.png output/
cp sources/ressources/ddg_herbsttagung.png output/
cp sources/ressources/oegim_jahrestagung_2023.pdf output/
cp sources/ressources/gerinnungstage_2023.pdf output/
cp sources/ressources/sommerakademie_2023.pdf output/
cp sources/ressources/hh_gefaesstag_2023.pdf output/
cp sources/ressources/oegia_live_webinar_2023.pdf output/
cp sources/ressources/stellenangebot_1.pdf output/
cp sources/ressources/sommerakademie_2024.pdf output/
cp sources/ressources/avc_2024.pdf output/
cp sources/ressources/gerinnungstage_2024.pdf output/
cp sources/ressources/oegim_jahrestagung_2024.pdf output/
cp sources/ressources/vascmed_2024.pdf output/
cp sources/ressources/eurothrombosis_2024.pdf output/
cp sources/ressources/podcast_esc2024_pavk.webp output/
cp sources/ressources/vascular_medicine_update.pdf output/
cp sources/ressources/dga_kongress_2025.pdf output/
cp sources/ressources/hh_gefaesstag_2025.pdf output/
cp sources/ressources/dga_summer_school_2025.pdf output/
cp sources/ressources/gerinnungstage_2025.pdf output/

echo 0
