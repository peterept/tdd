require 'test/unit'
require_relative 'customer'

class CustomerTest < Test::Unit::TestCase

  def test_full_name
  	customer = Customer.new("Peter", "Koch")
  	actual = customer.full_name
  	expected = "Peter Koch" 
  	msg = "Full name should be Peter Koch"
	assert_equal(expected, actual, msg)  	
  end

  def test_full_name_only_first_name
  	customer = Customer.new("Adelle", "")
  	assert_equal("Adelle", customer.full_name, 
  		"Single name only should be Adelle")
  end


  def test_full_name_with_spaces
  	# test case
  	customer = Customer.new("Peter  ", "  Koch ")
  	# assertion
  	assert_equal("Peter Koch", customer.full_name)

  end
end
