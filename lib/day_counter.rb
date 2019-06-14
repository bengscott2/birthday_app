require 'time'

class DayCounter
  def initialize(day, month)
    @day = day.to_i
    @month = month.to_i
  end

  def count_days
    current = Date.today
    birthday = Date.new(current.year,@month,@day)
    days = (birthday - current).to_i
    days.negative? ? (365 + days).to_s : days.to_s
  end
end
