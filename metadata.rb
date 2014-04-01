name             "osl-redmine"
maintainer       "Geoffrey corey"
maintainer_email "coreyg@osuosl.org"
license          "Apache 2.0"
description      "Install Redmine from Github"
version          "0.1.0"

recipe "osl-redmine", "Install the Redmine application from the source"
recipe "osl-redmine::source", "Install the Redmine application from the source"
recipe "osl-redmine::package", "Install the Redmine application from packages"

depends          'apache2'
depends          'apt'
depends          'database'5
depends          'git'
depends          'mysql', '= 3.0.12'
depends          'passenger_apache2'
depends          'postgresql'
depends          'yum'

%w{ centos redhat amazon scientific fedora suse }.each do |os|
    supports os
end
