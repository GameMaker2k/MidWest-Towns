#!/usr/bin/make -f

.PHONY: all clean buildgrf cleangrf

all: buildgrf

clean: cleangrf

buildgrf:
	nmlc --nfo mwc_town_names.nfo --grf mwc_town_names.grf mwc_town_names.nml

cleangrf:
	rm -rfv .nmlcache mwc_town_names.grf mwc_town_names.nfo parsetab.py
