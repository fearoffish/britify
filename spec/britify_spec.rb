# $Id$

require File.join(File.dirname(__FILE__), %w[spec_helper])

include Britify

describe Translate do
  setup do
    @t = Translate.new
  end
  
  it "should be instantiated without any arguments" do
    lambda { Translate.new(  ) }.should_not raise_error
    lambda { Translate.new( "moo" ) }.should raise_error(ArgumentError)
  end
  
  it "should have all translations in an accessor" do
    @t.translations.should be_a_kind_of(Hash)
  end
  
  it "should match up American terms in any case with the English equivalent" do
    @t.translate( "shut your gob" ).should == "shut your mouth"
    @t.translate( "POPPET" ).should == "affectionate nickname"
  end
  
  it "should do British to American if given a :reverse option" do
    @t.translate( "shut your mouth", :reverse ).should == "shut your gob"
  end
    
  it "should give a raise an error message if it doesn't have a translation" do
    lambda { @t.translate('what the buggering hell') }.should raise_error(RuntimeError)
  end
  
  it "should strip out any non alphabetic words" do
    @t.translate( "shut, your gob????").should == "shut your mouth"
    @t.translate( "big girl's blouse").should == "pansy"
  end
end

# EOF
