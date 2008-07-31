Gem::Specification.new do |s|
  s.name     = "grit"
  s.version  = "0.9.1"
  s.date     = "2008-04-24"
  s.summary  = "Object model interface to a git repo"
  s.email    = "tom@rubyisawesome.com"
  s.homepage = "http://github.com/schacon/grit"
  s.description = "Grit is a Ruby library for extracting information from a git repository in and object oriented manner."
  s.has_rdoc = true
  s.authors  = ["Tom Preston-Werner", "Scott Chacon"]
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
    spec/britify/translate/britify_spec.rb
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
    test/test_britify.rb
  ]
  s.rdoc_options = ["--main", "README.txt"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.add_dependency("mime-types", ["> 0.0.0"])
end