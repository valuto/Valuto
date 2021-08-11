#!/bin/bash
# create multiresolution windows icon
#mainnet
ICON_SRC=../../src/qt/res/icons/valuto.png
ICON_DST=../../src/qt/res/icons/valuto.ico
convert ${ICON_SRC} -resize 16x16 valuto-16.png
convert ${ICON_SRC} -resize 32x32 valuto-32.png
convert ${ICON_SRC} -resize 48x48 valuto-48.png
convert valuto-16.png valuto-32.png valuto-48.png ${ICON_DST}
#testnet
ICON_SRC=../../src/qt/res/icons/valuto_testnet.png
ICON_DST=../../src/qt/res/icons/valuto_testnet.ico
convert ${ICON_SRC} -resize 16x16 valuto-16.png
convert ${ICON_SRC} -resize 32x32 valuto-32.png
convert ${ICON_SRC} -resize 48x48 valuto-48.png
convert valuto-16.png valuto-32.png valuto-48.png ${ICON_DST}
rm valuto-16.png valuto-32.png valuto-48.png
