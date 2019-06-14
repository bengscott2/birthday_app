class BirthdayDecider

  def initialize(day, month)
    @birthday = Time.new(2019, month.to_i, day.to_i)
    @time = Time.new

  end

  def equal_to?
    @time.to_date == @birthday.to_date
  end
end
