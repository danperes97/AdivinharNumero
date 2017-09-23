require_relative 'game'
require_relative 'ui'

ui = UI.new

begin
  ui.ask_name
  name = gets.chomp.to_s
end while !name.is_a? String

begin
  ui.ask_difficulty
  difficulty = gets.chomp.to_i
end while !difficulty.is_a? Fixnum



game = Game.new(name, difficulty)
game.generate_secret_number

ui.ask_number
number = gets.to_i

puts game.won?(number)
