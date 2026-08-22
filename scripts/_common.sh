#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

_ynh_artisan() {
	ynh_hide_warnings ynh_exec_as_app \
		"php$php_version" artisan \
		"$@" --quiet --no-interaction
}
