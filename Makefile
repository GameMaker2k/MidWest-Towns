#!/usr/bin/make -f

.PHONY: all clean buildgrf buildgrfalt cleangrf

all: buildgrf buildgrfalt

clean: cleangrf

buildgrf:
	nmlc --nfo mwc_town_names.nfo --grf mwc_town_names.grf mwc_town_names.nml
	mv -v mwc_town_names.grf mwc_town_names-nml.grf

buildgrfalt:
	nforenum mwc_town_names.nfo
	grfcodec -e -c mwc_town_names.grf .
	mv -v mwc_town_names.grf mwc_town_names-nfo.grf
	rm -rfv mwc_town_names.nfo.bak

cleangrf:
	rm -rfv .nmlcache mwc_town_names.grf mwc_town_names-nml.grf mwc_town_names-nfo.grf mwc_town_names.nfo mwc_town_names.nfo.bak parsetab.py
