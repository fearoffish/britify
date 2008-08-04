# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

load 'tasks/setup.rb'

ensure_in_path 'lib'
require 'britify'

task :default => 'spec:run'

PROJ.name = 'britify'
PROJ.authors = 'Jamie van Dyke'
PROJ.email = 'jamie@parfa.it'
PROJ.url = 'http://blog.fearoffish.com/'
PROJ.rubyforge.name = 'britify'

PROJ.spec.opts << '--color'

# EOF
