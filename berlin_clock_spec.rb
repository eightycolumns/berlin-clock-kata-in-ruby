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
  end
end
