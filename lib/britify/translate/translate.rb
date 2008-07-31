require 'yaml'

module Britify
  class Translate
    attr_accessor :translations
  
    def initialize
      translations_file = File.join(File.dirname(__FILE__), %w[ .. .. .. data translations.yml ])
      @translations = YAML.load( IO.read(translations_file) )
    end  
  
    def translate( string, option = :normal )
      raise ArgumentError unless string.kind_of? String
      string.gsub!(/'/, '')
      string.gsub!(/\W+/, ' ')
      string.squeeze!(" ")
      string.strip!
      found = case option
      when :normal
        @translations[string.downcase]
      when :reverse
        v = @translations.find {|k,v| v == string.downcase }
        v.first if v.is_a? Array
      end
      raise("No idea what you meant.") unless found
      found
    end
    
  end
end