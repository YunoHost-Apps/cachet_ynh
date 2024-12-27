#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Execute a command with occ
exec_artisan() {
  (cd "$install_dir" && php$php_version artisan $@ --quiet --no-interaction)
}
