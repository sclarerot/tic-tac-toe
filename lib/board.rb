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

end
