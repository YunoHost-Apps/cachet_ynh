#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

YNH_PHP_VERSION="7.3"

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

# Execute a command as another user
# usage: exec_as USER COMMAND [ARG ...]
ynh_exec_as() {
  local USER=$1
  shift 1

  if [[ $USER = $(whoami) ]]; then
    eval "$@"
  else
    sudo -u "$USER" "$@"
  fi
}


readonly YNH_DEFAULT_COMPOSER_VERSION=1.10.17
# Declare the actual composer version to use.
# A packager willing to use another version of composer can override the variable into its _common.sh.
YNH_COMPOSER_VERSION=${YNH_COMPOSER_VERSION:-$YNH_DEFAULT_COMPOSER_VERSION}

# Execute a command with Composer
#
# usage: ynh_composer_exec [--phpversion=phpversion] [--workdir=$final_path] --commands="commands"
# | arg: -v, --phpversion - PHP version to use with composer
# | arg: -w, --workdir - The directory from where the command will be executed. Default $final_path.
# | arg: -c, --commands - Commands to execute.
ynh_composer_exec () {
	# Declare an array to define the options of this helper.
	local legacy_args=vwc
	declare -Ar args_array=( [v]=phpversion= [w]=workdir= [c]=commands= )
	local phpversion
	local workdir
	local commands
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"
	workdir="${workdir:-$final_path}"
	phpversion="${phpversion:-$YNH_PHP_VERSION}"

	COMPOSER_HOME="$workdir/.composer" \
		php${phpversion} "$workdir/composer.phar" $commands \
		-d "$workdir" --quiet --no-interaction
}

# Install and initialize Composer in the given directory
#
# usage: ynh_install_composer [--phpversion=phpversion] [--workdir=$final_path] [--install_args="--optimize-autoloader"] [--composerversion=composerversion]
# | arg: -v, --phpversion - PHP version to use with composer
# | arg: -w, --workdir - The directory from where the command will be executed. Default $final_path.
# | arg: -a, --install_args - Additional arguments provided to the composer install. Argument --no-dev already include
# | arg: -c, --composerversion - Composer version to install
ynh_install_composer () {
	# Declare an array to define the options of this helper.
	local legacy_args=vwa
	declare -Ar args_array=( [v]=phpversion= [w]=workdir= [a]=install_args= [c]=composerversion=)
	local phpversion
	local workdir
	local install_args
	local composerversion
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"
	workdir="${workdir:-$final_path}"
	phpversion="${phpversion:-$YNH_PHP_VERSION}"
	install_args="${install_args:-}"
	composerversion="${composerversion:-$YNH_COMPOSER_VERSION}"

	curl -sS https://getcomposer.org/installer \
		| COMPOSER_HOME="$workdir/.composer" \
		php${phpversion} -- --quiet --install-dir="$workdir" --version=$composerversion \
		|| ynh_die "Unable to install Composer."

	# update dependencies to create composer.lock
	ynh_composer_exec --phpversion="${phpversion}" --workdir="$workdir" --commands="install --no-dev $install_args" \
		|| ynh_die "Unable to update core dependencies with Composer."
}

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
