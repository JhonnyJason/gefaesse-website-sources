#!/bin/bash

## This script is called to link all ressources for testing
## testing/document-root shall have all ressources available as if it was the real document-root on deployment

pushd testing/document-root

ln -sfT ../../sources/ressources/font font
ln -sfT ../../sources/ressources/img img
ln -sfT ../../sources/ressources/video video

ln -sf ../../sources/ressources/manifest/* .
ln -sf ../../sources/ressources/favicon/* .

ln -sf ../../sources/ressources/oegia_statuten.pdf .
ln -sf ../../sources/ressources/oegia_empfohlene_lernunterlagen.pdf .
ln -sf ../../sources/ressources/Beitrittsformular.pdf .
ln -sf ../../sources/ressources/Datenschutzerklaerung.pdf .
ln -sf ../../sources/ressources/flyer_webinar_dez_9_21.pdf .
ln -sf ../../sources/ressources/esvm_2022.pdf .
ln -sf ../../sources/ressources/thrombosedialog_2022.pdf .
ln -sf ../../sources/ressources/iua_course_2022.pdf .
ln -sf ../../sources/ressources/euro_thrombosis_2022.png .
ln -sf ../../sources/ressources/dga_summer_school_2023.pdf .
ln -sf ../../sources/ressources/ddg_herbsttagung.png .
ln -sf ../../sources/ressources/oegim_jahrestagung_2023.pdf .
ln -sf ../../sources/ressources/gerinnungstage_2023.pdf .
ln -sf ../../sources/ressources/sommerakademie_2023.pdf .
ln -sf ../../sources/ressources/dga_kongress_2023.jpg .

popd

echo 0
