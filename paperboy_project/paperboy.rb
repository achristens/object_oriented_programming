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
    number = 50 + (@experience / 2)
  end

  def deliver(start_address, end_address)
    total_papers = (end_address - start_address) + 1
    quota_papers = quota * 0.25
    quota_papers = quota_papers.to_f
    bonus_papers = (total_papers - quota) * 0.50
    bonus_papers = bonus_papers.to_f
    total_earned = quota_papers + bonus_papers
    @experience = total_papers
  end
end

ari = Paperboy.new("Ari")
































# class Paperboy
#   def initialize(name)
#     @name       = name
#     @experience = 0
#     @earnings   = 0
#   end
#
#   def name
#     @name
#   end
#
  def experience
    @experience
  end

  def earnings
    @earnings
  end

  def quota
    # If first delivery, quota = 50
    number = 50 + (@experience / 2)
    "Your quota is #{number} papers to deliver."
  end
#
# end
#
# abby = Paperboy.new("Abby")
