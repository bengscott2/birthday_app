require 'day_counter'

describe DayCounter do
  describe '#count_days' do
    it 'counts days until birthday' do
      Timecop.freeze(2019,01,01) do
        day_counter =  DayCounter.new('10', '04')
        expect(day_counter.count_days).to eq('99')
      end
    end
  end
end
