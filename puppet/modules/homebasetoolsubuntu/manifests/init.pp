class homebasetoolsubuntu {
    include homebasetoolsubuntu::packages

    file { "/usr/local/bin/setup-xfce4-vnc":
      path => '/usr/local/bin/setup-xfce4-vnc',
      owner => 'root',
      mode => '755',
      ensure => present,
      source => "puppet:///modules/homebasetoolsubuntu/setup-xfce4-vnc"
    }

    file { "/usr/local/lib/dot_screensaver":
      path => '/usr/local/lib/dot_screensaver',
      owner => 'root',
      mode => '755',
      ensure => present,
      source => "puppet:///modules/homebasetoolsubuntu/dot_xscreensaver"
    }

    file { "/usr/local/bin/hashit":
      path => '/usr/local/bin/hashit',
      owner => 'root',
      mode => '755',
      ensure => present,
      source => "puppet:///modules/homebasetoolsubuntu/hashit"
    }

    file { '/usr/local/bin/implant_cryptor':
        path => '/usr/local/bin/implant_cryptor',
        owner => 'root',
        mode => '755',
        ensure => present,
        source => "puppet:///modules/homebasetoolsubuntu/implant_cryptor.py",
    }
}
