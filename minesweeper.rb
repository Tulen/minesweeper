require_relative 'board'

class MineSweeper
  def initialize
    @board
  end

  def play
    setup
    # play_turn until won?
  end

  def setup
    @difficulty = get_difficulty until %i[easy medium hard].include?(@difficulty)
    @size = get_size until (3..20).cover?(@size)
    board.create_grid
  end

  def get_difficulty
    print 'Easy, medium, hard?: '
    gets.chomp.downcase.to_sym
  end

  def get_size
    print 'Pick a board size: (3..20) '
    gets.chomp.to_i
  end

  def play_turn
  end

  def won?
  end
end

if __FILE__ == $PROGRAM_NAME
  new_game = MineSweeper.new
  new_game.play
end
