class Board
  attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight, :nine

  def initialize
    @one = '1'
    @two = '2'
    @three = '3'
    @four = '4'
    @five = '5'
    @six = '6'
    @seven = '7'
    @eight = '8'
    @nine = '9'
  end

  def draw
    puts "#{one} #{two} #{three}"
    puts "#{four} #{five} #{six}"
    puts "#{seven} #{eight} #{nine}"
  end

  def reserved?(tile)
    if tile == 'x' || tile == 'o'
      true
    else
      false
    end
  end

  def check_for_win
    if self.one == 'x' && self.two == 'x' && self.three == 'x'
      'x'
    elsif self.four == 'x' && self.five == 'x' && self.six == 'x'
      'x'
    elsif self.seven == 'x' && self.eight == 'x' && self.nine == 'x'
      'x'
    elsif self.one == 'x' && self.four == 'x' && self.seven == 'x'
      'x'
    elsif self.two == 'x' && self.five == 'x' && self.eight == 'x'
      'x'
    elsif self.three == 'x' && self.six == 'x' && self.nine == 'x'
      'x'
    elsif self.one == 'x' && self.five == 'x' && self.nine == 'x'
      'x'
    elsif self.three == 'x' && self.five == 'x' && self.seven == 'x'
      'x'

    elsif self.one == 'o' && self.two == 'o' && self.three == 'o'
      '0'
    elsif self.four == 'o' && self.five == 'o' && self.six == 'o'
      'o'
    elsif self.seven == 'o' && self.eight == 'o' && self.nine == 'o'
      'o'
    elsif self.one == 'o' && self.four == 'o' && self.seven == 'o'
      'o'
    elsif self.two == 'o' && self.five == 'o' && self.eight == 'o'
      'o'
    elsif self.three == 'o' && self.six == 'o' && self.nine == 'o'
      'o'
    elsif self.one == 'o' && self.five == 'o' && self.nine == 'o'
      'o'
    elsif self.three == 'o' && self.five == 'o' && self.seven == 'o'
      'o'

    else
      false
    end

  end

end
 