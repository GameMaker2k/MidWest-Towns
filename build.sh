#!/bin/bash

rm -rfv .nmlcache mwc_town_names-optimized.nml mwc_town_names.grf mwc_town_names-nml.grf mwc_town_names-nfo.grf mwc_town_names.nfo mwc_town_names.nfo.bak mwc_town_names-nml.nfo parsetab.py
nmlc --verbosity 5 --nml mwc_town_names-optimized.nml --nfo mwc_town_names-nml.nfo --grf mwc_town_names.grf mwc_town_names.nml
cp -v mwc_town_names-nml.nfo mwc_town_names.nfo
mv -v mwc_town_names.grf mwc_town_names-nml.grf
nforenum mwc_town_names.nfo
grfcodec -g 2 -n -e -c mwc_town_names.grf .
mv -v mwc_town_names.grf mwc_town_names-nfo.grf
rm -rfv mwc_town_names.nfo.bak
