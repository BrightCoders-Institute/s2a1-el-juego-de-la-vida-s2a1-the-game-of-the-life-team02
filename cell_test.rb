require 'minitest/autorun'
require_relative 'cell'

class CellTest < Minitest::Test
  def setup
    @cell = Cell.new
  end

  def test_cell_initialization
    assert_includes [0, 1], @cell.status, 'La célula debe inicializarse con un estado de 0 o 1'
  end

  def test_cell_display
    assert_includes ['.', '*'], @cell.mostrar, 'La célula debe mostrar "." o "*" dependiendo de su estado'
  end
end
