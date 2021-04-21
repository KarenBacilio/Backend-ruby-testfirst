class Timer
  #write your code here
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end

  def time_string
    second = @seconds%60
    minute = @seconds/60
    minute = minute % 60
    hour = @seconds / 3600
    padded(hour) + ":" + padded(minute) + ":" + padded(second)
  end

  def padded(number)
    return_result = number >= 10? number.to_s: "0#{number}"
  end
end
