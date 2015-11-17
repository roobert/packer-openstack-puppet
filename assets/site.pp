file { '/etc/hostname':
  content => $fqdn
}

file { '/etc/hosts':
  content => template('/tmp/puppet/hosts.erb')
}
