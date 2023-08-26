package { 'puppet':
  ensure => 'installed',
}

class baseconfig {
  file { '/etc/hosts':
    content => "127.0.0.1 localhost\n192.168.100.5 servidorHaproxy\n192.168.100.6 servidor1\n192.168.100.7 servidor2\n192.168.100.8 servidor3",
    ensure  => 'file',
  }
}

include baseconfig
