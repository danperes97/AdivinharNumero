require 'pry'
class Game
  attr_accessor :tries
  attr_reader   :name, :difficulty, :tries, :secret_number, :range, :points

  def initialize(name, difficulty)
    @name       = name
    @range      = (difficulty * 30) + 1
    @dificulty  = difficulty
    @tries      = 5
    @points     = 1000
  end

  def generate_secret_number
    # @secret_number = rand(self.range)
    @secret_number = 12
  end

  def won?(number)
    @secret_number == number
  end

  def larger?(number)
    number > @secret_number
  end

  def loose_points(number)
    @points -= (number - @secret_number).abs / 2
  end
end
