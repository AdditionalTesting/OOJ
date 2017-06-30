class Player

  def initialize
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    if @gold_coins % 10 == 0 && @gold_coins > 1
      level_up
      @gold_coins += 1
    else
      @gold_coins += 1
    end
  end

  def do_battle(damage)
    @health_points = @health_points - damage
    if @health_points < 1
      @health_points = 10
      @lives -= 1
      if @lives < 1
        restart
      end
    end
  end


  def restart
    initialize
  end

end
