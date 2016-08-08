require( "minitest/autorun" )
require_relative( "../models/word_formatter" )

class TestWordFormatter < MiniTest::Test

  def test_make_upcase
    postcode = WordFormatter.new("iv2 3nn")
    assert_equal("IV2 3NN", postcode.make_upcase() )
  end

  def test_make_camelcase
    codeclan = WordFormatter.new("code clan")
    assert_equal("CodeClan", codeclan.make_camelcase)
  end

end