# encoding: utf-8
name             'mysql'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures Percona MySQL'
version          '0.2.0'
recipe           'mysql::default', 'Installs/configures Percona MySQL'

depends 'apt'
