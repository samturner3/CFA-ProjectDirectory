require "test/unit"
require_relative 'Customer'

class StringTest < Test::Unit::TestCase

    def test_string
      string = String.new("Hello World")
      actual = String.speak
      expected = "Hello World"
      assert_equal(expected, actual)
    end
