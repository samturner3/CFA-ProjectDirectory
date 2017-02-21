require "test/unit"
require_relative 'String'

class StringTest < Test::Unit::TestCase

    def test_string
      string = String.new()
      actual = string.speak
      expected = "Hello World!"
      assert_equal(expected, actual)
    end
end
