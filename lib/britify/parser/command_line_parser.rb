module Britify
  class CommandLineParser
    attr_reader :arguments
    
    def initialize(args)
      @arguments = args.flatten
    end
    
    def words
      return @arguments
    end
  end
end