package { 'sudo':
  ensure => 'installed'
}

file { '/etc/sudoers':
  ensure => 'file',
  mode => '0440',
  owner => 'root',
  group => 'root',
  source => '/etc/puppetlabs/code/environments/production/manifests/sudoers',
  require => Package['sudo']
}

exec { 'parse_sudoers':
  command => '/usr/sbin/visudo -c -f /etc/puppetlabs/code/environments/production/manifests/sudoers',
  unless => '/usr/bin/diff /etc/puppetlabs/code/environments/production/manifests/sudoers /etc/sudoers',
  require => Package['sudo'],
}
