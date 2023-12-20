# frozen_string_literal: true

require_relative 'cell'

# Clase Board para crear el tablero del juego de la vida
class Board
  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @grid = Array.new(@rows) { Array.new(@columns) { Cell.new } }
  end

  # Generar tablero
  def generate_board
    @rows.times do |i|
      @columns.times do |j|
        print @grid[i][j].mostrar
      end
      puts # Agregar un salto de línea después de cada fila
    end
  end

  attr_reader :grid
end
