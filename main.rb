# frozen_string_literal: true

# importaciones
require_relative 'board'
require_relative 'cell'

# Solicitar entrada al usuario
puts 'Ingrese columnas:'
@columns = gets.chomp.to_i

puts 'Ingrese filas'
@rows = gets.chomp.to_i

board = Board.new(@rows, @columns)

board.generate_board
