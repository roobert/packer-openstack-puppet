# packer-openstack-puppet

A Packer template that builds an OpenStack image based off the vanilla Debian Jessie OpenStack image. The template adds an init script called `firstboot` which removes itself after a new instance created from the resulting image has first run.

The included `firstboot` script properly configures a new instances `hostname` and then runs `puppet agent` to configure the machine.
