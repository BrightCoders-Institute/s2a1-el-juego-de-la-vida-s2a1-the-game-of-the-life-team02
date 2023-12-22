# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'board'

class BoardTest < Minitest::Test
def setup
# Configuración común para las pruebas
@board = Board.new(3, 3)
end

def test_generate_board
output = capture_io { @board.generate_board }.join
assert_match(/\.\.\.\n\.\.\.\n\.\.\./, output)
end

def test_count_surrounding_cells
# Agrega pruebas para el método count_surrounding_cells
# ...

# Ejemplo:
counts = @board.send(:count_surrounding_cells, 1, 1)
assert_equal({ live: 0, dead: 0 }, counts)
end

def test_next_generation
# Agrega pruebas para el método next_generation
# ...

    # Ejemplo:
    @board.next_generation
    assert_equal(@board.generate_board, @board.generate_board)
    end
end