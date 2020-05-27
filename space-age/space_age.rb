class SpaceAge

  ORBITAL_PERIOD = {
    earth: 31557600,
    mercury: 0.2408467
  }

  def initialize(aged_seconds)
    @aged_seconds = aged_seconds.to_f
  end

  def on_earth
    (@aged_seconds / ORBITAL_PERIOD[:earth]).round(2)
  end

  def on_mercury
    on_earth
  end
end


puts SpaceAge.new(31_536_000).on_earth