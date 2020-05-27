class SumOfMultiples
  attr_accessor :divisors

  def initialize(*divisors)
    @divisors = divisors
  end

  def to(limit)
    multiples = []
    dividends = (0...limit).to_a

    divisors.each do |divisor|
      multiples << dividends.select do |dividend|
        (dividend % divisor).zero? if divisor.positive?
      end
    end

    multiples.flatten.uniq.sum
  end
end
