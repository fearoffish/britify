# $Id$

require File.join(File.dirname(__FILE__), %w[ .. .. spec_helper ])

include Britify

describe CommandLineParser do
  setup do
    @p = CommandLineParser.new(["some", "commandline", "arguments"])
  end
  
  it "should parse an array and return a string" do
    @p.words.should == %w{ some commandline arguments }
  end
  
end

# EOF
