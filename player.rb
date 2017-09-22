class Player
  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
    "You now have #{@lives} lives remaining."
  end
end

abby = Player.new
