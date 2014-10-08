# puppetdb-rundeck

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with puppetdb_rundeck](#setup)
    * [What puppetdb_rundeck affects](#what-puppetdb_rundeck-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with puppetdb_rundeck](#beginning-with-puppetdb_rundeck)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

##Overview

This is a puppet module that will manage and install the puppetdb_rundeck [puppetdb_rundeck](https://rubygems.org/gems/puppetdb_rundeck) ruby gem

[![Build Status](https://travis-ci.org/opentable/puppet-puppetdb_rundeck.png?branch=master)](https://travis-ci.org/opentable/puppet-puppetdb_rundeck)

##Module Description

This module installs the [puppetdb_rundeck](https://rubygems.org/gems/puppetdb_rundeck) ruby gem. This gem is a small application that provides an
api for puppetdb that can be used as a URL resource in rundeck.

##Setup

###What puppetdb_rundeck affects

* The installation of the [puppetdb_rundeck](https://rubygems.org/gems/puppetdb_rundeck) ruby gem
* Creates a service to manage the application installed by this gem


###Beginning with puppetdb_rundeck

To install puppetdb_rundeck:

```puppet
  puppetdb_rundeck { 'puppetdb_rundeck':
    version => '0.1.0'
  }
```

To install puppetdb_rundeck on a different port:

```puppet
  puppetdb_rundeck { 'puppetdb_rundeck':
    version => '0.1.0',
    port    => '9090'
  }
```

To install puppetdb_rundeck on a system with an external host:

```puppet
  puppetdb_rundeck { 'puppetdb_rundeck':
    version => '0.1.0',
    puppetdb_host => 'anotherhost.somedomain.com',
    puppetdb_post => '8081'
  }
```

##Usage

###Classes and Defined Types

####Class: `puppetdb_rundeck`
The puppetdb_rundeck class is the root class to manage the installation of the puppetdb_rundeck gem and service

##Reference

###Classes
####Public Classes
* [`puppetdb_rundeck`](#class-puppetdb_rundeck): Guides the installation of the puppetdb_rundeck application

####Private Classes
* [`puppetdb_rundeck::install`] Manages the installation of the puppetdb_rundeck gem
* [`puppetbd_rundeck::service`] Manages the puppetdb_rundeck service

##Limitations

This module is tested on the following platforms:

* CentOS 6
* Ubuntu 12.04.2

It is tested with the OSS version of Puppet only.


##Development

###Contributing

Please read CONTRIBUTING.md for full details on contributing to this project.
