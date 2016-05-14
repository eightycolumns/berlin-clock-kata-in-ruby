require_relative 'berlin_clock.rb'

describe 'Berlin Clock' do
  before :each do
    @berlin_clock = BerlinClock.new
  end

  describe 'one-minute row' do
    it 'is OOOO at minute 0' do
      @berlin_clock.set_time(0, 0, 0)
      expect(@berlin_clock.one_minute_row).to eq 'OOOO'
    end

    it 'is YYYY at minute 59' do
      @berlin_clock.set_time(0, 59, 0)
      expect(@berlin_clock.one_minute_row).to eq 'YYYY'
    end

    it 'is OOOO at minute 10' do
      @berlin_clock.set_time(0, 10, 0)
      expect(@berlin_clock.one_minute_row).to eq 'OOOO'
    end

    it 'is YOOO at minute 11' do
      @berlin_clock.set_time(0, 11, 0)
      expect(@berlin_clock.one_minute_row).to eq 'YOOO'
    end

    it 'is YYOO at minute 12' do
      @berlin_clock.set_time(0, 12, 0)
      expect(@berlin_clock.one_minute_row).to eq 'YYOO'
    end

    it 'is YYYO at minute 13' do
      @berlin_clock.set_time(0, 13, 0)
      expect(@berlin_clock.one_minute_row).to eq 'YYYO'
    end

    it 'is YYYY at minute 14' do
      @berlin_clock.set_time(0, 14, 0)
      expect(@berlin_clock.one_minute_row).to eq 'YYYY'
    end
  end

  describe 'five-minute row' do
    it 'is OOOOOOOOOOO at minute 0' do
      @berlin_clock.set_time(0, 0, 0)
      expect(@berlin_clock.five_minute_row).to eq 'OOOOOOOOOOO'
    end

    it 'is YYRYYRYYRYY at minute 59' do
      @berlin_clock.set_time(0, 59, 0)
      expect(@berlin_clock.five_minute_row).to eq 'YYRYYRYYRYY'
    end

    it 'is OOOOOOOOOOO at minute 4' do
      @berlin_clock.set_time(0, 4, 0)
      expect(@berlin_clock.five_minute_row).to eq 'OOOOOOOOOOO'
    end

    it 'is YOOOOOOOOOO at minute 5' do
      @berlin_clock.set_time(0, 5, 0)
      expect(@berlin_clock.five_minute_row).to eq 'YOOOOOOOOOO'
    end

    it 'is YYRYYROOOOO at minute 30' do
      @berlin_clock.set_time(0, 30, 0)
      expect(@berlin_clock.five_minute_row).to eq 'YYRYYROOOOO'
    end

    it 'is YYRYYRYYRYO at minute 54' do
      @berlin_clock.set_time(0, 54, 0)
      expect(@berlin_clock.five_minute_row).to eq 'YYRYYRYYRYO'
    end

    it 'is YYRYYRYYRYY at minute 55' do
      @berlin_clock.set_time(0, 55, 0)
      expect(@berlin_clock.five_minute_row).to eq 'YYRYYRYYRYY'
    end
  end

  describe 'one-hour row' do
    it 'is OOOO at hour 0' do
      @berlin_clock.set_time(0, 0, 0)
      expect(@berlin_clock.one_hour_row).to eq 'OOOO'
    end

    it 'is RRRO at hour 23' do
      @berlin_clock.set_time(23, 0, 0)
      expect(@berlin_clock.one_hour_row).to eq 'RRRO'
    end

    it 'is OOOO at hour 10' do
      @berlin_clock.set_time(10, 0, 0)
      expect(@berlin_clock.one_hour_row).to eq 'OOOO'
    end

    it 'is ROOO at hour 11' do
      @berlin_clock.set_time(11, 0, 0)
      expect(@berlin_clock.one_hour_row).to eq 'ROOO'
    end
  end
end
