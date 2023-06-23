$doc_root = '/tmp'

file { $doc_root:
  ensure => 'directory',
}

file { "${doc_root}/school":
  ensure  => 'file',
  content => 'I love Puppet',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
  require => File[$doc_root],
}
