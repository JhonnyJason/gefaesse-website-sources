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

cp sources/ressources/oegia_statuten.pdf output/
cp sources/ressources/oegia_empfohlene_lernunterlagen.pdf output/
cp sources/ressources/Beitrittsformular.pdf output/
cp sources/ressources/Datenschutzerklaerung.pdf output/
cp sources/ressources/flyer-webinar-dez-9-21.pdf output/
cp sources/ressources/esvm_2022.pdf output/

echo 0
