# frozen_string_literal: true

# importaciones
require_relative 'board'
require_relative 'cell'

def solicitar_entero(prompt)
  loop do
    print "#{prompt}\n"
    input = gets.chomp

    return Integer(input) if /^\d+$/.match?(input)

    puts 'Por favor, ingresa un número entero válido.'
  end
end

# Solicitar entrada al usuario
columns = solicitar_entero('Ingrese columnas:')
rows = solicitar_entero('Ingrese filas:')

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
