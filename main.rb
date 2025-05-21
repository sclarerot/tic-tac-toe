require_relative 'lib/board'
require_relative 'lib/player'

board = Board.new
player_one = Player.new('x')
player_two = Player.new('o')

player_one_turn = true
player_two_turn = false
round = true


while round == true

  while player_one_turn == true do
    board.draw
    puts "Player one! Take your turn."
    puts ""
    input = gets.chomp.to_s

    if input == '1' && board.reserved?(board.one) == false
      board.one = player_one.symbol
      player_one_turn = false
    elsif input == '2' && board.reserved?(board.two) == false
      board.two = player_one.symbol
      player_one_turn = false
    elsif input == '3' && board.reserved?(board.three) == false
      board.three = player_one.symbol
      player_one_turn = false
    elsif input == '4' && board.reserved?(board.four) == false
      board.four = player_one.symbol
      player_one_turn = false
    elsif input == '5' && board.reserved?(board.five) == false
      board.five = player_one.symbol
      player_one_turn = false
    elsif input == '6' && board.reserved?(board.six) == false
      board.six = player_one.symbol
      player_one_turn = false
    elsif input == '7' && board.reserved?(board.seven) == false
      board.seven = player_one.symbol
      player_one_turn = false
    elsif input == '8' && board.reserved?(board.eight) == false
      board.eight = player_one.symbol
      player_one_turn = false
    elsif input == '9' && board.reserved?(board.nine) == false
      board.nine = player_one.symbol
      player_one_turn = false
    else
      puts "Invalid input. Please try again."
    end

  end

    if board.check_for_win == 'x'
      player_one.increment_wins
      round = false
      puts "The score is #{player_one.wins} to #{player_two.wins}!"
    else
    player_two_turn = true
    end

  while player_two_turn == true
    board.draw
    puts "Player two! Take your turn."
    puts ""
    input = gets.chomp.to_s

    if input == '1' && board.reserved?(board.one) == false
      board.one = player_two.symbol
      player_two_turn = false
    elsif input == '2' && board.reserved?(board.two) == false
      board.two = player_two.symbol
      player_two_turn = false
    elsif input == '3' && board.reserved?(board.three) == false
      board.three = player_two.symbol
      player_two_turn = false
    elsif input == '4' && board.reserved?(board.four) == false
      board.four = player_two.symbol
      player_two_turn = false
    elsif input == '5' && board.reserved?(board.five) == false
      board.five = player_two.symbol
      player_two_turn = false
    elsif input == '6' && board.reserved?(board.six) == false
      board.six = player_two.symbol
      player_two_turn = false
    elsif input == '7' && board.reserved?(board.seven) == false
      board.seven = player_two.symbol
      player_two_turn = false
    elsif input == '8' && board.reserved?(board.eight) == false
      board.eight = player_two.symbol
      player_two_turn = false
    elsif input == '9' && board.reserved?(board.nine) == false
      board.nine = player_two.symbol
      player_two_turn = false
    else
      puts "Invalid input. Please try again."
    end

  end

    if board.check_for_win == 'o'
      player_one.increment_wins
      round = false
      puts "The score is #{player_one.wins} to #{player_two.wins}!"
    else
    player_one_turn = true
    end

  end
  