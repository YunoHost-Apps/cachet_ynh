# Cachet for YunoHost

[![Integration level](https://dash.yunohost.org/integration/cachet.svg)](https://dash.yunohost.org/appci/app/cachet) ![](https://ci-apps.yunohost.org/ci/badges/cachet.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/cachet.maintain.svg)  
[![Install cachet with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=cachet)

> *This package allows you to install Cachet quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview
[Cachet](https://cachethq.io/) is a free, open source status page for your API, service or company. Built with all of the features that you'd expect from a status page, Cachet comes with a powerful API, a metric system, multiple user support, two factor authentication for added security and is easy to get setup. A powerful, self-hosted alternative to StatusPage.io and Status.io.

**Shipped version:** 2.3.18

## Screenshots

![](https://github.com/CachetHQ/Assets/raw/master/screenshots/main-interface.png)

## Demo

* [Official demo](https://demo.cachethq.io/)

## Configuration

Totally configurable through the Cachet application dashboard.

## Documentation

 * Official documentation: https://docs.cachethq.io/
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-user support

* LDAP or HTTP authentication aren't supported (see limitations below).
* This package supports multiple instances installation.

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/cachet%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/cachet/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/cachet%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/cachet/)

## Limitations

- Must necessarily be installed on domain root (see upstream issue [here](https://github.com/CachetHQ/Cachet/issues/1696))
- Can't integrate with YunoHost SSO as LDAP support is not implemented yet (see upstream issue [here](https://github.com/CachetHQ/Cachet/issues/2108))


## Additional information

None.

## Links

 * Report a bug: https://github.com/YunoHost-Apps/cachet_ynh/issues
 * App website: https://cachethq.io/
 * Upstream app repository: https://github.com/CachetHQ/Cachet
 * YunoHost website: https://yunohost.org/

---

## Developers info

Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/cachet_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/cachet_ynh/tree/testing --debug
or
sudo yunohost app upgrade cachet -u https://github.com/YunoHost-Apps/cachet_ynh/tree/testing --debug
```
