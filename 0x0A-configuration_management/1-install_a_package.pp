#!/usr/bin/pup
# An especific version of flask (2.1.0) will be installed
package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}
