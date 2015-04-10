class CreditCheck
  attr_reader :number

  def initialize(number)
    @number = number.to_s.chars.map(&:to_i).reverse
  end

  def multiply
    @number = number.map.with_index do |num,index|
      index.odd? ? num * 2 : num
    end.reverse
  end

  def splits_double_digits
    @number = multiply.map do |num|
      num > 9 ? num - 9 : num
    end.reduce(:+)
  end

  def valid?
    splits_double_digits
    @number % 10 == 0
  end

  def prints_result   
    puts valid? ? "VALID" : "NOT VALID"
  end
end

CreditCheck.new(4024007106512380).prints_result #Not Valid
CreditCheck.new(5541808923795240).prints_result #Valid
CreditCheck.new(342804633855673).prints_result #Valid