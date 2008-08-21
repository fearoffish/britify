Gem::Specification.new do |s|
  s.name     = "britify"
  s.version  = "0.0.1"
  s.date     = "2008-07-31"
  s.summary  = "British <-> American Translator"
  s.email    = "jamie@parfa.it"
  s.homepage = "http://github.com/fearoffish/britify"
  s.description = "Britify is an amusement project, for translating the differences between British and American slangs."
  s.has_rdoc = true
  s.authors  = ["Jamie van Dyke"]
  s.files    = %w[
    History.txt
    Manifest.txt
    README.markdown
    Rakefile
    bin/britify
    bin/yankify
    britify.gemspec
    data/translations.yml
    lib/britify.rb
    lib/britify/command_line_parser/command_line_parser.rb
    lib/britify/translate/translate.rb
    spec/britify/command_line_parser/command_line_parser_spec.rb
    spec/britify/translate/translate_spec.rb
    spec/spec_helper.rb
    tasks/ann.rake
    tasks/bones.rake
    tasks/gem.rake
    tasks/git.rake
    tasks/manifest.rake
    tasks/notes.rake
    tasks/post_load.rake
    tasks/rdoc.rake
    tasks/rubyforge.rake
    tasks/setup.rb
    tasks/spec.rake
    tasks/svn.rake
    tasks/test.rake
  ]
  s.executables = ['britify','yankify']
  s.rdoc_options = ["--main", "README.markdown"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.markdown"]
end