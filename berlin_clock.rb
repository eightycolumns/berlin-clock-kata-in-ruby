class BerlinClock
  public

  def self.seconds_lamp_at(second)
    (second % 2 == 0) ? '1' : '0'
  end

  def self.five_hour_row_at(hour)
    row(4, hour / 5)
  end

  def self.one_hour_row_at(hour)
    row(4, hour % 5)
  end

  def self.five_minute_row_at(minute)
    row(11, minute / 5)
  end

  def self.one_minute_row_at(minute)
    row(4, minute % 5)
  end

  def self.composite_row_at(hour, minute, second)
    seconds_lamp_at(second) +
    five_hour_row_at(hour) +
    one_hour_row_at(hour) +
    five_minute_row_at(minute) +
    one_minute_row_at(minute)
  end

  private

  def self.row(lights, lights_on)
    lights_off = lights - lights_on
    '1' * lights_on + '0' * lights_off
  end
end
