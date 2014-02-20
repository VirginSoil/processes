class Luhn
  attr_reader :number
  def self.create(number)
    test_number = number * 10
    luhn = Luhn.new(test_number)
    return test_number if luhn.valid?
    test_number + 10 - (luhn.checksum % 10)
  end

  def initialize(number)
    @number = number
  end

  def cipher
    numbers = []
    break_up.map(&:to_i).each_with_index do |number, integer|
      if integer % 2 == 0
        numbers << number
      else
        value = number * 2
        value -= 9 if value > 9
        numbers << value
      end
    end
    numbers.reverse
  end

  def break_up
    number.to_s.reverse.split('')
  end

  def checksum
    cipher.inject(:+)
  end

  def valid?
    checksum % 10 == 0
  end
end
