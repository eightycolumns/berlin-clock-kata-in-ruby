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
  end
end
