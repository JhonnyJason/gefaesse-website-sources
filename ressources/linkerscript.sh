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
ln -sf ../../sources/ressources/flyer-webinar-dez-9-21.pdf .
ln -sf ../../sources/ressources/esvm_2022.pdf .
ln -sf ../../sources/ressources/sommerakademie_2022.pdf .
ln -sf ../../sources/ressources/gerinnungstage_2022.pdf .
ln -sf ../../sources/ressources/thrombosedialog_2022.pdf .

popd

echo 0
