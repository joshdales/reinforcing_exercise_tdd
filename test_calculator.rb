require 'minitest/autorun'
require 'minitest/pride'
# In this problem we are going to make a calculator.
require './calculator.rb'

class TestCalculator < MiniTest::Test
  # add takes two parameters and adds them
  def setup do
    calc = Calculator.new

  def test_adds_0_and_0
    result = calc.adds(0, 0)
    expected = 0
    assert_equal expected, result
  end

  def test_adds_2_and_2
    result = calc.adds(2, 2)
    expected = 4
    assert_equal expected, result
  end

  def test_adds_positive_numbers
    result = calc.adds(2, 6)
    expected = 8
    assert_equal expected, result
  end

 # subtract takes two parameters and subtracts the second from the first
  def test_subtracts_numbers
    result = calc.subtracts(10, 4)
    expected = 6
    assert_equal expected, result
  end

# sum takes an *array* of numbers and adds them all together
# This one is a bit trickier!
  def test_computes_sum_of_empty_array
    result = calc.computes_sum([])
    expected = 0
    assert_equal expected, result
  end

  def test_computes_sum_of_single_number
    result = calc.computes_sum([7])
    expected = 7
    assert_equal expected, result
  end

  def test_computes_sum_of_two_numbers
    assert_equal 18, sum([7, 11])
  end

  def test_computes_sum_of_many_numbers
    assert_equal 25, sum([1,3,5,7,9])
  end
end
