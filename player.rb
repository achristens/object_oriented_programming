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

  def collect_treasure
    @gold_coins += 1
    if (@gold_coins % 10 == 0)
      print "You leveled up! You now have #{@gold_coins} gold coins PLUS "
      level_up
    else
      "You now have #{@gold_coins} gold coins."
    end
  end

  # START DAMAGE BLOCK
  def do_battle(damage)
    @health_points = @health_points - damage
    if @health_points < 1
      @lives -= 1
      @health_points = 10
      "You lost of life. Here's your health update: Health: #{@health_points}, Lives: #{@lives}"
      # if @lives == 0
    else
      "Your health is at #{@health_points} points."
    end
  end
  # END DAMAGE BLOCK

end

abby = Player.new
puts abby.collect_treasure
