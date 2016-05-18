class BerlinClock
  def set_time(hour, minute, second)
    @hour = hour
    @minute = minute
    @second = second
  end

  def seconds_lamp
    (@second % 2 == 0) ? '1' : '0'
  end

  def five_hour_row
    row(4, @hour / 5)
  end

  def one_hour_row
    row(4, @hour % 5)
  end

  def five_minute_row
    row(11, @minute / 5)
  end

  def one_minute_row
    row(4, @minute % 5)
  end

  def row(lights, lights_on)
    lights_off = lights - lights_on
    '1' * lights_on + '0' * lights_off
  end

  def composite_row
    seconds_lamp +
    five_hour_row +
    one_hour_row +
    five_minute_row +
    one_minute_row
  end

  public(
    :seconds_lamp,
    :five_hour_row,
    :one_hour_row,
    :five_minute_row,
    :one_minute_row,
    :composite_row
  )

  private :row
end
