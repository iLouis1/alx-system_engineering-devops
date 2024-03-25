#!/usr/bin/env bash
# Puppet is used to connect without password

file { '/etc/ssh/ssh_config':
	ensure => present,
}

file_line { 'Turn off passwd auth':
	path => '/etc/ssh/ssh_config',
	line => '^#PasswordAuthentication',
	match => '*#PasswordAuthentication',
}

file_line { 'Declare identity file':
	path => '/etc/ssh/ssh_config',
	line => 'identityfile ~/.ssh/school',
	match => '^#IdenityFile',
}
