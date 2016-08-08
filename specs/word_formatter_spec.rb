require( "minitest/autorun" )
require_relative( "../models/word_formatter" )

class TestWordFormatter < MiniTest::Test

  def setup
    @word_formatter = WordFormatter.new("iv2 3nn")
  end

  def test_make_upcase
    assert_equal("IV2 3NN", @word_formatter.make_upcase() )
  end

end