#!/usr/bin/pup
# An especific version of flask (2.1.0) will be installed
package {'flask':
provider => 'pip3'
  ensure   => '2.1.0',
}
