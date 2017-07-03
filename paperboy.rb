class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 50
  end

  def deliver(start_address, end_address)
    total = end_address - start_address
    initial_quota = 0
    plus_initial_quota = 0
    @experience = @experience + total
    if total >= @quota
      initial_quota = @quota
      plus_initial_quota = total - initial_quota
    else
      initial_quota = total
      plus_initial_quota = 0
      @earnings -= 2
    end

    quota_earninings = initial_quota * 0.25
    plus_quota_earnings = plus_initial_quota * 0.50
    @earnings = @earnings + (quota_earninings + plus_quota_earnings)
    @quota = 50 + (@experience / 2)
  end

  def report
    puts "Paperboy #{@name} delivered #{@experience} and has earned #{@earnings}."
  end

end
