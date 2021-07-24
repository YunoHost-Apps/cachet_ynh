#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

YNH_PHP_VERSION="7.3"

# Composer version
YNH_COMPOSER_VERSION="2.0.13"

extra_php_dependencies="php${YNH_PHP_VERSION}-gd php${YNH_PHP_VERSION}-mbstring php${YNH_PHP_VERSION}-xml php${YNH_PHP_VERSION}-mysql php${YNH_PHP_VERSION}-sqlite3"

#=================================================
# PERSONAL HELPERS
#=================================================

# Execute a command with occ
exec_artisan() {
  (cd "$final_path" && 
      php$YNH_PHP_VERSION artisan $@ --quiet --no-interaction)
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
