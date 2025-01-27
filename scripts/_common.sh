#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

composer_version="2.8.5"

exec_artisan() {
  (cd "$install_dir" && php$php_version artisan $@ --quiet --no-interaction)
}
