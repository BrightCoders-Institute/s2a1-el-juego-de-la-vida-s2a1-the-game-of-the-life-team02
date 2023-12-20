# frozen_string_literal: true

# Clase Board para crear el tablero del juego de la vida
class Board
  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @grid = Array.new(@rows) { Array.new(@columns) }
  end

  # Generar tablero
  def generate_board
    (0...@rows).each do |i|
      (0...@columns).each do |j|
        puts grid[i][j]
      end
    end
  end

  attr_reader :grid
end
