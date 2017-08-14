class Player

  def initialize(gold_coins,health_points,lives)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
      @gold_coins += 1
      if @gold_coins % 10 == 0
        level_up
      end
  end

  def do_battle(damage)
    @health_points = @health_points - damage

    if @health_points < 1
      @lives = @lives - 1
      @health_points = 10
      if @lives == 0
      restart
    end
    end
  end


  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

end

navi = Player.new(0,10,5)

p navi.level_up

navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure


p navi

navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure
navi.collect_treasure

p navi

navi.do_battle(10)
navi.do_battle(10)
navi.do_battle(10)
navi.do_battle(10)
navi.do_battle(10)
navi.do_battle(10)
navi.do_battle(10)
navi.do_battle(10)




p navi
