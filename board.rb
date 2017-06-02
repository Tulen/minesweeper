require_relative 'tile'

class Board
  def initialize
    @grid_size
    @difficulty
  end

  def create_grid(grid_size, difficulty)
    @grid = Array.new(@grid_size) do
      Array.new(@grid_size) { Tile.new(rand(@difficulty).zero?) }
    end
  end

  def bomb_count(grid_size, difficulty)

  end
end
