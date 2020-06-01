class Series
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers.chars
  end

  def slices(interval)
    raise ArgumentError if interval > numbers.size

    numbers.each_cons(interval).map(&:join)
  end
end
