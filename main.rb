# frozen_string_literal: true

# importaciones
require_relative 'board'
require_relative 'cell'

# Solicitar entrada al usuario
puts 'Ingrese columnas:'
columns = gets.chomp.to_i

puts 'Ingrese filas:'
rows = gets.chomp.to_i

board = Board.new(rows, columns)

loop do
  # system('clear') || system('cls') # Limpiar la pantalla (compatible con diferentes sistemas operativos)

  puts 'Estado actual:'
  board.generate_board

  puts 'Presiona enter para continuar, "x" para salir...'
  input = gets.chomp

  break if input.downcase == 'x'

  board.next_generation
end

puts 'El juego ha finalizado.'
