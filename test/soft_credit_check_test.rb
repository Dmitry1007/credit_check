# require 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require './lib/softest_credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_can_check_valid_and_invalid_15_digit_AMEX_numbers
    assert_equal "VALID", CreditCheck.new(342804633855673).prints_result
    assert_equal "NOT VALID", CreditCheck.new(342801633855673).prints_result
  end

  def test_it_can_check_valid_and_invalid_16_digit_VISA_numbers
    assert_equal "VALID", CreditCheck.new(5541808923795240).prints_result
    assert_equal "NOT VALID", CreditCheck.new(4024007106512380).prints_result
  end

end