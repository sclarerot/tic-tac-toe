class Player
  attr_accessor :symbol, :wins

  def initialize(symbol)
    @symbol = symbol
    @wins = 0
  end

  def increment_wins
    self.wins += 1
  end

end
