# require 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require '../lib/soft_credit_check'

class CreditCheckTest < Minitest::Test

# AMEX 11 digit 
# account_id = 79927398713   #Valid
# account_id = 342804633855673 #Valid
# account_id = 342801633855673 #Not Valid

# VISA 16 digits
# account_id = 5541808923795240 #Valid
# account_id = 4024007106512380 #Not Valid
  

end