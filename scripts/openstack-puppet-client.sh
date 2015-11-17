#!/usr/bin/env bash
DIST_CODENAME=$(lsb_release -cs)
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-$DIST_CODENAME.deb -O /tmp/puppetlabs-release-pc1-$DIST_CODENAME.deb
dpkg -i /tmp/puppetlabs-release-pc1-$DIST_CODENAME.deb
apt-get update
apt-get -y upgrade
apt-get -y install puppet-agent unzip curl
echo 'export PATH="$PATH:/opt/puppetlabs/bin:/opt/puppetlabs/puppet/bin"' > /etc/profile.d/Z69-puppet.sh
