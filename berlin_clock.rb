class BerlinClock
  public

  def self.seconds_lamp(second)
    (second % 2 == 0) ? '1' : '0'
  end

  def self.five_hour_row(hour)
    row(4, hour / 5)
  end

  def self.one_hour_row(hour)
    row(4, hour % 5)
  end

  def self.five_minute_row(minute)
    row(11, minute / 5)
  end

  def self.one_minute_row(minute)
    row(4, minute % 5)
  end

  def self.composite_row(hour, minute, second)
    seconds_lamp(second) +
    five_hour_row(hour) +
    one_hour_row(hour) +
    five_minute_row(minute) +
    one_minute_row(minute)
  end

  private

  def self.row(total_lights, lights_on)
    lights_off = total_lights - lights_on
    ('1' * lights_on) + ('0' * lights_off)
  end
end
