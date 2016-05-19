require_relative 'berlin_clock.rb'

describe 'Berlin Clock' do
  describe 'seconds lamp' do
    it 'is 1 at second 0' do
      expect(BerlinClock.seconds_lamp 0).to eq '1'
    end

    it 'is 0 at second 59' do
      expect(BerlinClock.seconds_lamp 59).to eq '0'
    end
  end

  describe 'five-hour row' do
    it 'is 0000 at hour 0' do
      expect(BerlinClock.five_hour_row 0).to eq '0000'
    end

    it 'is 1111 at hour 23' do
      expect(BerlinClock.five_hour_row 23).to eq '1111'
    end

    it 'is 0000 at hour 4' do
      expect(BerlinClock.five_hour_row 4).to eq '0000'
    end

    it 'is 1000 at hour 5' do
      expect(BerlinClock.five_hour_row 5).to eq '1000'
    end

    it 'is 1100 at hour 12' do
      expect(BerlinClock.five_hour_row 12 ).to eq '1100'
    end

    it 'is 1110 at hour 19' do
      expect(BerlinClock.five_hour_row 19).to eq '1110'
    end

    it 'is 1111 at hour 20' do
      expect(BerlinClock.five_hour_row 20).to eq '1111'
    end
  end

  describe 'one-hour row' do
    it 'is 0000 at hour 0' do
      expect(BerlinClock.one_hour_row 0).to eq '0000'
    end

    it 'is 1110 at hour 23' do
      expect(BerlinClock.one_hour_row 23).to eq '1110'
    end

    it 'is 0000 at hour 10' do
      expect(BerlinClock.one_hour_row 10).to eq '0000'
    end

    it 'is 1000 at hour 11' do
      expect(BerlinClock.one_hour_row 11).to eq '1000'
    end

    it 'is 1100 at hour 12' do
      expect(BerlinClock.one_hour_row 12).to eq '1100'
    end

    it 'is 1110 at hour 13' do
      expect(BerlinClock.one_hour_row 13).to eq '1110'
    end

    it 'is 1111 at hour 14' do
      expect(BerlinClock.one_hour_row 14).to eq '1111'
    end
  end

  describe 'five-minute row' do
    it 'is 00000000000 at minute 0' do
      expect(BerlinClock.five_minute_row 0).to eq '00000000000'
    end

    it 'is 11111111111 at minute 59' do
      expect(BerlinClock.five_minute_row 59).to eq '11111111111'
    end

    it 'is 00000000000 at minute 4' do
      expect(BerlinClock.five_minute_row 4).to eq '00000000000'
    end

    it 'is 10000000000 at minute 5' do
      expect(BerlinClock.five_minute_row 5).to eq '10000000000'
    end

    it 'is 11111100000 at minute 30' do
      expect(BerlinClock.five_minute_row 30).to eq '11111100000'
    end

    it 'is 11111111110 at minute 54' do
      expect(BerlinClock.five_minute_row 54).to eq '11111111110'
    end

    it 'is 11111111111 at minute 55' do
      expect(BerlinClock.five_minute_row 55).to eq '11111111111'
    end
  end

  describe 'one-minute row' do
    it 'is 0000 at minute 0' do
      expect(BerlinClock.one_minute_row 0).to eq '0000'
    end

    it 'is 1111 at minute 59' do
      expect(BerlinClock.one_minute_row 59).to eq '1111'
    end

    it 'is 0000 at minute 10' do
      expect(BerlinClock.one_minute_row 10).to eq '0000'
    end

    it 'is 1000 at minute 11' do
      expect(BerlinClock.one_minute_row 11).to eq '1000'
    end

    it 'is 1100 at minute 12' do
      expect(BerlinClock.one_minute_row 12).to eq '1100'
    end

    it 'is 1110 at minute 13' do
      expect(BerlinClock.one_minute_row 13).to eq '1110'
    end

    it 'is 1111 at minute 14' do
      expect(BerlinClock.one_minute_row 14).to eq '1111'
    end
  end

  describe 'composite row' do
    it 'is 100000000000000000000000 at 00:00:00' do
      composite_row = BerlinClock.composite_row(0, 0, 0)
      expect(composite_row).to eq '100000000000000000000000'
    end

    it 'is 011111110111111111111111 at 23:59:59' do
      composite_row = BerlinClock.composite_row(23, 59, 59)
      expect(composite_row).to eq '011111110111111111111111'
    end
  end
end
