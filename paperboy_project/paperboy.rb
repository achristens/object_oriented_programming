class Paperboy
  def initialize(name)
    @name       = name
    @experience = 0
    @earnings   = 0
  end

  def name
    @name
  end

  def experience
    @experience
  end

  def earnings
    @earnings
  end

  def quota
    50 + (@experience / 2)
  end

  def deliver(start_address, end_address)
    total_addresses = (end_address - start_address).abs
    if total_addresses == quota
      quota_papers = quota * 0.25
      quota_papers = quota_papers.to_f
      days_total = quota_papers
      @earnings += days_total

    elsif total_addresses > quota
      quota_papers = quota * 0.25
      quota_papers = quota_papers.to_f
      bonus_papers = (total_addresses - quota) * 0.5
      bonus_papers = bonus_papers.to_f
      days_total = quota_papers + bonus_papers
      @earnings += days_total

    else
      @earnings -= 2
    end
    @experience += total_addresses
    @earnings
  end

  def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end
end

ari = Paperboy.new("Ari")
