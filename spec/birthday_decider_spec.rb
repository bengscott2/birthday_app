require 'birthday_decider'

describe BirthdayDecider do
  it 'returns true or false if birthday is equal to current day' do
    Timecop.freeze(2019,01,01) do
      birthday_decider = BirthdayDecider.new(10,04)
      expect(birthday_decider.equal_to?).to eq false
    end
  end

  it 'returns true or false if birthday is equal to current day' do
    Timecop.freeze(2019,01,01) do
      birthday_decider = BirthdayDecider.new(1,1)
      expect(birthday_decider.equal_to?).to eq true
    end
  end
end
