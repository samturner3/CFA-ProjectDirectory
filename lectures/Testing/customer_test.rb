require "test/unit"
require_relative 'Customer'

class CustomerTest < Test::Unit::TestCase

  def test_full_name
    customer = Customer.new("Sam", "Turner")

    actual = customer.full_name
    expected = "Sam Turner"
    msg = "Message"
    assert_equal(expected, actual, msg)
  end

  def test_full_name_only_first_name
    # Test Case
    customer = Customer.new("Adelle", "")

    actual = customer.full_name
    # Expected result
    expected = "Adelle"
    msg = "Single name only should be Adelle"
    # Actual  assertion
    assert_equal(expected, actual, msg)
  end

  def test_full_name_with_spaces
    customer = Customer.new("  Sam  ", "  Turner  ")

    actual = customer.full_name
    expected = "Sam Turner"
    msg = "Message"
    assert_equal(expected, actual, msg)
  end

end
