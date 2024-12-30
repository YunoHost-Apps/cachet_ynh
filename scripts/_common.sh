#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

YNH_COMPOSER_VERSION=2.8.4

#=================================================
# PERSONAL HELPERS
#=================================================

# Execute a command with occ
exec_artisan() {
  (cd "$install_dir" && 
      ynh_exec_as $app php$phpversion artisan $@ --quiet --no-interaction)
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
