#!/bin/bash

rm -rfv .nmlcache mwc_town_names.grf mwc_town_names.nfo parsetab.py
nmlc --nfo mwc_town_names.nfo --grf mwc_town_names.grf mwc_town_names.nml
