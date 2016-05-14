class BerlinClock
  def set_time(hour, minute, second)
    @hour = hour
    @minute = minute
    @second = second
  end

  def one_minute_row
    row = ''

    (@minute % 5).times { row += 'Y' }

    row += 'O' until row.length == 4

    row
  end

  def five_minute_row
    row = ''

    (@minute / 5).times do
      row += ((row.length + 1) % 3 == 0) ? 'R' : 'Y'
    end

    row += 'O' until row.length == 11

    row
  end

  def one_hour_row
    row = ''

    (@hour % 5).times { row += 'R' }

    row += 'O' until row.length == 4

    row
  end

  def five_hour_row
    row = ''

    (@hour / 5).times { row += 'R' }

    row += 'O' until row.length == 4

    row
  end

  def seconds_lamp
    (@second % 2 == 0) ? 'Y' : 'O'
  end
end
