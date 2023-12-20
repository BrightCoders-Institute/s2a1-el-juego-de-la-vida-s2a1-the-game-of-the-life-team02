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
    @grid.each do |i|
      @rows.each do |j|
        print Cell.status
      end
    end
  end

  attr_reader :grid
end
