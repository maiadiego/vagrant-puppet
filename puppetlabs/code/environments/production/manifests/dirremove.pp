file{ 'remove_dir':
  path => '/home/maia',
  ensure => absent,
  force => true,
}
