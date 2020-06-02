class ArmstrongNumbers
  def self.include?(number)
    numbers          = number.to_s.chars
    armstrong_number = numbers.reduce(0) do |acc, num|
      acc + num.to_i ** numbers.size
    end

    armstrong_number == number
  end
end
