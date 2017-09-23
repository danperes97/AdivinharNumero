class Game
  attr_reader :name, :difficulty, :secret_number, :range

  def initialize(name, difficulty)
    @name       = name
    @range      = (difficulty * 30) + 1
    @dificulty  = difficulty
    @tries      = 5
    @points     = 1000
  end

  def generate_secret_number
    @secret_number = rand(self.range)
  end

  def won?(number)
    @secret_number == number
  end

  def larger?(number)
    number > @secret_number
  end
end
