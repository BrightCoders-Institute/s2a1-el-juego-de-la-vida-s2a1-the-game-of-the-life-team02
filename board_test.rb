# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'board'

class BoardTest < Minitest::Test
  def setup
    # Configuración común para las pruebas
    @board = Board.new(1000, 1000)
  end

  def test_generate_board
    output = capture_io { @board.generate_board }.join
    expected_output = @board.instance_variable_get(:@grid).map { |row| row.map(&:mostrar).join }.join("\n")

    # No agregamos el último salto de línea
    assert_equal(expected_output.chomp, output.chomp)  # Ajuste aquí
  end

  def test_count_surrounding_cells
    counts = @board.send(:count_surrounding_cells, 1, 1)
    assert counts.is_a?(Hash), 'El método debe devolver un hash'
    assert counts.key?(:live) && counts.key?(:dead), 'El hash debe contener las claves :live y :dead'
  end

  def test_next_generation
    # Agrega pruebas para el método next_generation
    # ...

    # Ejemplo:
    initial_board = @board.generate_board
    @board.next_generation
    assert_equal(initial_board, @board.generate_board)
  end
end
