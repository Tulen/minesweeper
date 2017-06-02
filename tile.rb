# # # # P
# @     #
# #     #
# # 1 # #
# # # # #
# bomb
# flag
# revealed_number
# revealed_0
# hidden
require 'colorize'

class Tile
  attr_accessor :revealed, :flagged, :bomb, :value
  COLOR_VALUES = %i[blue green red blue magenta cyan black light_black].freeze

  def initialize(bomb = false)
    @revealed = false
    @flagged = false
    @bomb = bomb
    @value = nil
  end

  def to_s
    if @revealed
      if @bomb
        '@'.red
      elsif @value == 0
        ' '
      else
        @value.method(COLOR_VALUES[@value - 1]).call
      end
    else
      if @flagged
        'P'.yellow
      else
        '#'.black
      end
    end
  end

  def reveal
    @revealed = true
  end

  def toggle_flag
    @flagged = !@flagged
  end
end
