# frozen_string_literal: true

# Clase Celular para definir los vivos y muertos del juego
class Cell
  attr_accessor :status # Viva o muerto

  def initialize
    @status = rand(2)
  end

  def mostrar
    @status == 1 ? '*' : '.' # * = Vivo | . = Muerto
  end
end
