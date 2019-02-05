Cachet for YunoHost
------------------------
[![Install Cachet with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=cachet)

[![Integration level](https://dash.yunohost.org/integration/cachet.svg)](https://ci-apps.yunohost.org/jenkins/job/cachet%20%28Community%29/lastBuild/consoleFull)

This is a [Cachet](https://cachethq.io/) package for YunoHost.

![](https://github.com/CachetHQ/Assets/raw/master/images/logo/Cachet.png)

---

**Shipped version:** 2.3.15

[Cachet](https://cachethq.io/) is a free, open source status page for your API, service or company. Built with all of the features that you'd expect from a status page, Cachet comes with a powerful API, a metric system, multiple user support, two factor authentication for added security and is easy to get setup. A powerful, self-hosted alternative to StatusPage.io and Status.io.


![](https://github.com/CachetHQ/Assets/raw/master/screenshots/main-interface.png)

## Features

- List your service components
- Report incidents
- Customise the look of your status page
- Markdown support for incident messages
- A powerful JSON API
- Metrics
- Multi-lingual
- Subscriber notifications via email
- Two factor authentication

## Known issues
- Must necessarily be installed on domain root (see upstream issue [here](https://github.com/CachetHQ/Cachet/issues/1696))
- Can't integrate with YunoHost SSO as LDAP support is not implemented yet (see upstream issue [here](https://github.com/CachetHQ/Cachet/issues/2108))

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/cachet%20%28Community%29.svg)](https://ci-apps.yunohost.org/ci/apps/cachet/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/cachet%20%28Community%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/cachet/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/cachet%20%28Community%29.svg)](https://ci-stretch.nohost.me/ci/apps/cachet/)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/cachet_ynh/issues
 * Cachet website: https://cachethq.io/
 * Cachet documentation: https://docs.cachethq.io/reference
 * YunoHost website: https://yunohost.org/
