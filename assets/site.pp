file { '/etc/hostname':
  content => $fqdn
}

file { '/etc/hosts':
  content => template('/tmp/puppet/hosts.erb')
}

exec { 'cloud_init_manage_etc_hosts_false':
  command => "sed -i 's/manage_etc_hosts: true/manage_etc_hosts: false/' /etc/cloud/cloud.cfg"
}
