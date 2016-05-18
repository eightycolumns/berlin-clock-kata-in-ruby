require_relative 'berlin_clock.rb'

describe 'Berlin Clock' do
  before :each do
    @berlin_clock = BerlinClock.new
  end

  describe 'seconds lamp' do
    it 'is 1 at 00:00:00' do
      @berlin_clock.set_time(0, 0, 0)
      expect(@berlin_clock.seconds_lamp).to eq '1'
    end

    it 'is 0 at 00:00:59' do
      @berlin_clock.set_time(0, 0, 59)
      expect(@berlin_clock.seconds_lamp).to eq '0'
    end
  end

  describe 'five-hour row' do
    it 'is 0000 at 00:00:00' do
      @berlin_clock.set_time(0, 0, 0)
      expect(@berlin_clock.five_hour_row).to eq '0000'
    end

    it 'is 1111 at 23:00:00' do
      @berlin_clock.set_time(23, 0, 0)
      expect(@berlin_clock.five_hour_row).to eq '1111'
    end

    it 'is 0000 at 04:00:00' do
      @berlin_clock.set_time(4, 0, 0)
      expect(@berlin_clock.five_hour_row).to eq '0000'
    end

    it 'is 1000 at 05:00:00' do
      @berlin_clock.set_time(5, 0, 0)
      expect(@berlin_clock.five_hour_row).to eq '1000'
    end

    it 'is 1100 at 12:00:00' do
      @berlin_clock.set_time(12, 0, 0)
      expect(@berlin_clock.five_hour_row).to eq '1100'
    end

    it 'is 1110 at 19:00:00' do
      @berlin_clock.set_time(19, 0, 0)
      expect(@berlin_clock.five_hour_row).to eq '1110'
    end

    it 'is 1111 at 20:00:00' do
      @berlin_clock.set_time(20, 0, 0)
      expect(@berlin_clock.five_hour_row).to eq '1111'
    end
  end

  describe 'one-hour row' do
    it 'is 0000 at 00:00:00' do
      @berlin_clock.set_time(0, 0, 0)
      expect(@berlin_clock.one_hour_row).to eq '0000'
    end

    it 'is 1110 at 23:00:00' do
      @berlin_clock.set_time(23, 0, 0)
      expect(@berlin_clock.one_hour_row).to eq '1110'
    end

    it 'is 0000 at 10:00:00' do
      @berlin_clock.set_time(10, 0, 0)
      expect(@berlin_clock.one_hour_row).to eq '0000'
    end

    it 'is 1000 at 11:00:00' do
      @berlin_clock.set_time(11, 0, 0)
      expect(@berlin_clock.one_hour_row).to eq '1000'
    end

    it 'is 1100 at 12:00:00' do
      @berlin_clock.set_time(12, 0, 0)
      expect(@berlin_clock.one_hour_row).to eq '1100'
    end

    it 'is 1110 at 13:00:00' do
      @berlin_clock.set_time(13, 0, 0)
      expect(@berlin_clock.one_hour_row).to eq '1110'
    end

    it 'is 1111 at 14:00:00' do
      @berlin_clock.set_time(14, 0, 0)
      expect(@berlin_clock.one_hour_row).to eq '1111'
    end
  end

  describe 'five-minute row' do
    it 'is 00000000000 at 00:00:00' do
      @berlin_clock.set_time(0, 0, 0)
      expect(@berlin_clock.five_minute_row).to eq '00000000000'
    end

    it 'is 11111111111 at 00:59:00' do
      @berlin_clock.set_time(0, 59, 0)
      expect(@berlin_clock.five_minute_row).to eq '11111111111'
    end

    it 'is 00000000000 at 00:04:00' do
      @berlin_clock.set_time(0, 4, 0)
      expect(@berlin_clock.five_minute_row).to eq '00000000000'
    end

    it 'is 10000000000 at 00:05:00' do
      @berlin_clock.set_time(0, 5, 0)
      expect(@berlin_clock.five_minute_row).to eq '10000000000'
    end

    it 'is 11111100000 at 00:30:00' do
      @berlin_clock.set_time(0, 30, 0)
      expect(@berlin_clock.five_minute_row).to eq '11111100000'
    end

    it 'is 11111111110 at 00:54:00' do
      @berlin_clock.set_time(0, 54, 0)
      expect(@berlin_clock.five_minute_row).to eq '11111111110'
    end

    it 'is 11111111111 at 00:55:00' do
      @berlin_clock.set_time(0, 55, 0)
      expect(@berlin_clock.five_minute_row).to eq '11111111111'
    end
  end

  describe 'one-minute row' do
    it 'is 0000 at 00:00:00' do
      @berlin_clock.set_time(0, 0, 0)
      expect(@berlin_clock.one_minute_row).to eq '0000'
    end

    it 'is 1111 at 00:59:00' do
      @berlin_clock.set_time(0, 59, 0)
      expect(@berlin_clock.one_minute_row).to eq '1111'
    end

    it 'is 0000 at 00:10:00' do
      @berlin_clock.set_time(0, 10, 0)
      expect(@berlin_clock.one_minute_row).to eq '0000'
    end

    it 'is 1000 at 00:11:00' do
      @berlin_clock.set_time(0, 11, 0)
      expect(@berlin_clock.one_minute_row).to eq '1000'
    end

    it 'is 1100 at 00:12:00' do
      @berlin_clock.set_time(0, 12, 0)
      expect(@berlin_clock.one_minute_row).to eq '1100'
    end

    it 'is 1110 at 00:13:00' do
      @berlin_clock.set_time(0, 13, 0)
      expect(@berlin_clock.one_minute_row).to eq '1110'
    end

    it 'is 1111 at 00:14:00' do
      @berlin_clock.set_time(0, 14, 0)
      expect(@berlin_clock.one_minute_row).to eq '1111'
    end
  end

  describe 'composite row' do
    it 'is 100000000000000000000000 at 00:00:00' do
      @berlin_clock.set_time(0, 0, 0)
      expect(@berlin_clock.composite_row).to eq '100000000000000000000000'
    end

    it 'is 011111110111111111111111 at 23:59:59' do
      @berlin_clock.set_time(23, 59, 59)
      expect(@berlin_clock.composite_row).to eq '011111110111111111111111'
    end
  end
end
