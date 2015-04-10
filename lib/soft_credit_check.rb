class CreditCheck
  attr_reader :number

  def initialize(number)
    @number = number.to_s.chars.reverse 
  end

  def multiply
    multiplied = []
    number.each.with_index do |num,index|
      if index == 0
        multiplied << num
      elsif index.odd?
        multiplied << (num.to_i * 2).to_s
      else
        multiplied << num
      end
    end
    multiplied.reverse
  end

  def splits_double_digits
    result = []
    multiply.each do |num|
      if num.size > 1
        result << (num.to_i-9)
      else
        result << num.to_i
      end
    end
    result.inject(:+)
  end

  def prints_result   
    if splits_double_digits % 10 == 0
      puts "VALID"
    else
      puts "NOT VALID"
    end
  end
end

CreditCheck.new(342801633855673).prints_result