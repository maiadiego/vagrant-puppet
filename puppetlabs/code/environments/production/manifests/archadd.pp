file { 'teste':
  path => '/tmp/teste.txt',
  ensure => absent,
  mode => '0640',
  content => "Conteudo de teste!\n",
}
