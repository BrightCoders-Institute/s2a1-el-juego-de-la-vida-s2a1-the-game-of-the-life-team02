# frozen_string_literal: true

require_relative 'cell'

# Clase Board para crear el tablero del juego de la vida
class Board
  DEAD = 0
  ALIVE = 1

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
      puts # Agregar un salto de linea después de cada fila
    end
  end

  def count_neighbor
    @rows.times do |i|
      @columns.times do |j|
        count = count_surrounding_cells(i, j)
        print count
      end
      puts # Agregar un salto de linea después de cada fila
    end
  end

  def next_generation
    @rows.times do |i|
      @columns.times do |j|
        cell = @grid[i][j]
        @counts = count_surrounding_cells(i, j)
        @lives = @counts[:live]
        rules(cell)
      end
    end
  end

  def rules(cell)
    case @lives
    when 0..1
      cell.status = DEAD # Regla 1: Muere por falta de población
    when 2
      # Regla 3: Sobrevive a la siguiente generación
    when 3
      cell.status = ALIVE # Regla 4: Se convierte en una célula viva
    else
      cell.status = DEAD # Regla 2: Muere por sobre-población
    end
  end

  def test
    @rows.times do |i|
      @columns.times do |j|
        @counts = count_surrounding_cells(i, j)
        @lives = @counts[:live] # Corrección aquí
        puts "En la posición [#{i}][#{j}]: Live: #{@counts[:live]}, Dead: #{@counts[:dead]}"
        puts @counts[:live]
      end
    end
  end

  # Metodo para contar las células vivas y muertas en las posiciones circundantes a [i][j]
  def count_surrounding_cells(i, j)
    live_count = 0
    dead_count = 0

    # Bucle para recorrer las posiciones circundantes
    (-1..1).each do |row_offset|
      (-1..1).each do |col_offset|
        # Ignorar la posición actual [i][j]
        next if row_offset.zero? && col_offset.zero?

        # Calcular las coordenadas de la posicion circundante
        row = i + row_offset
        col = j + col_offset

        # Verificar que la posicion circundante esté dentro de los límites del tablero
        if row >= 0 && row < @rows && col >= 0 && col < @columns
          # Incrementar el contador correspondiente segun el estado de la célula en la posición circundante
          if @grid[row][col].status == 1
            live_count += 1
          else
            dead_count += 1
          end
        end
      end
    end

    # Retornar un hash con los recuentos
    { live: live_count, dead: dead_count }
  end
end
