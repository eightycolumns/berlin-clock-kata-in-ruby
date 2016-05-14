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
end
