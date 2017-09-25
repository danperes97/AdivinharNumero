class UI
  def self.ask_name
    print 'Type your name here: '
  end

  def self.ask_difficulty
    print 'Choose difficulty: (1) Very easy - (2) Easy - (3) Medium - (4) Professional - (5) Insane: '
  end

  def self.ask_number
    print 'Type here a number: '
  end

  def self.winner_message
    print 'Congratulations you won!!'
  end

  def self.keep_playing_message
    puts 'Do you want to continue to play? [Y/N]'
  end

  def self.exit_game_message
    puts 'Exiting...'
  end
end
