# $Id$

require File.join(File.dirname(__FILE__), %w[ .. .. spec_helper ])

include Britify

describe CommandLineParser do
  setup do
    @p = CommandLineParser.new
  end
  
end

# EOF
