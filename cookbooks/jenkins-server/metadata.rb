name             'jenkins-server'
maintainer       'Pieter Vogelaar'
maintainer_email 'pieter@pietervogelaar.nl'
license          'MIT'
description      'This cookbook installs a complete Jenkins server with plugins and is highly configurable with attributes in this cookbook.'
long_description 'This cookbook installs a complete Jenkins server with plugins and is highly configurable with attributes in this cookbook. It configures settings, plugins, security, slaves and depends on the [Jenkins](https://supermarket.chef.io/cookbooks/jenkins) cookbook that is used as foundation. It also installs (can be disabled) the Jenkins plugins, php-template job and required PHP tools as described on [jenkins-php.org](http://jenkins-php.org).'
version          '0.6.0'

supports         'centos', '>= 6.6'
supports         'redhat', '>= 6.6'
supports         'ubuntu', '>= 12.04'
supports         'debian', '>= 7.0'

# depends 'jenkins', '>= 2.3.1'
# depends 'java'
# depends 'ant'
# depends 'git'
# depends 'composer'
# depends 'nginx'
# depends 'chef-vault'
