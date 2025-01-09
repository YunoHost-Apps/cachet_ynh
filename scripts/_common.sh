#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# Composer version
YNH_COMPOSER_VERSION="2.5.8"

#=================================================
# PERSONAL HELPERS
#=================================================

# Execute a command with occ
exec_artisan() {
  (cd "$install_dir" && 
      php$phpversion artisan $@ --quiet --no-interaction)
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
