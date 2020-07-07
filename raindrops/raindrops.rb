class Raindrops
  SONGS = {
    '3': 'Pling',
    '5': 'Plang',
    '7': 'Plong'
  }.freeze

  class << self
    def convert(interval_limit)
      factors = factors_of(interval_limit)
      legends = legendize_factors(factors)

      legends.empty? ? interval_limit.to_s : legends
    end

    private

    def factors_of(number)
      (1..number).select do |n|
        (number % n).zero?
      end.map(&:to_s)
    end

    def legendize_factors(factors)
      factors.map do |factor|
        SONGS[factor.to_sym]
      end.join
    end
  end
end
