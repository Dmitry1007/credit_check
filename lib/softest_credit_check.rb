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
    valid? ? "VALID" : "NOT VALID"
  end
end
