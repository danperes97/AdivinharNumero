require_relative 'game'
require_relative 'ui'
require 'pry'

begin
  UI.ask_name
  name = gets.chomp.to_s
end while !name.is_a? String

begin
  UI.ask_difficulty
  difficulty = gets.chomp.to_i
end while !difficulty.is_a? Fixnum

game = Game.new(name, difficulty)
game.generate_secret_number


while game.tries != 0
  UI.ask_number
  number = gets.to_i

  if game.won?(number)
    puts "Won!! Points => #{game.points}"
    break
  elsif game.tries == 1
    game.loose_points(number)
    puts "You loose! Points => #{game.points}"
    break
  else
    game.loose_points(number)
    game.tries -= 1
  end
end
