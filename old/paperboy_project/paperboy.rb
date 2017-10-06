require 'pry'
class Paperboy
  def initialize(name)
    @name       = name
    @experience = 0.0
    @earnings   = 0.0
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
      days_total = quota_papers
      @earnings += days_total

    elsif total_addresses > quota
      quota_papers = quota * 0.25
      bonus_papers = (total_addresses - quota) * 0.5
      days_total = quota_papers + bonus_papers
      @earnings += days_total

    else
      quota_papers = quota * 0.25
      @earnings += quota_papers - 2
    end
    @experience += total_addresses
    @earnings
    binding.pry
  end

  def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end
end

ari = Paperboy.new("Ari")
puts ari.deliver(50,100)
puts ari.report
puts ari.inspect

puts ari.deliver(50,100)
puts ari.report
puts ari.inspect
