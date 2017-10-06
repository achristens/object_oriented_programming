class Paperboy

  def initialize(name)
    @name       = name
    @experience = 0
    @earnings   = 0
  end

  # readers
  def name
    @name
  end

  def experience
    @experience
  end

  def earnings
    @earnings
  end

  # Writers
  def experience=(update_exp)
    @experience = update_exp
  end

  # instance methods
  def quota
    # This method should calculate and return the paperboy's quota for his next delivery
    (experience / 2)+ 50
  end

  def deliver(start_address, end_address)
    total_papers = (end_address - start_address) + 1
    quota_income = (quota * 0.25).to_f
    money_made   = 0

    if total_papers == quota
      money_made = quota_income

    elsif total_papers > quota
      over_quota = ((total_papers - quota) * 0.50).to_f
      money_made = quota_income + over_quota

    elsif total_papers < quota
      papers_income = total_papers * 0.25
      money_made = (papers_income - 2).to_f
    end

    @experience += total_papers
    @earnings += money_made
    money_made
  end

  def report
    "I'm #{name}, I've delivered #{experience} papers and I've earned $#{earnings} so far!"
    # This method should return a string about the paperboy's performance
  end

end

tommy = Paperboy.new("Tommy")

puts tommy.quota # => 50
puts tommy.deliver(101, 160) # => 17.5
puts tommy.earnings #=> 17.5
puts tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"

puts tommy.quota # => 80
puts tommy.deliver(1, 75) # => 16.75
puts tommy.earnings #=> 34.25
puts tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"
