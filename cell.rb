class cell
  attr_accessor :status
  ##Estado para saber si esta viva o muerta
  ## * == vivo  . == muerto

  def initialize(status)
    @status = status
  end

  def initialize
    @status = rand(2)
  end

  def mostrar
    @estado == 1 ? '*' : '.'
  end
end