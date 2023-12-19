class Board
  

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @grid = []
  end
    def grid   
      @grid 
    end
  def generate_board
    for i in 0..@rows
      for j in 0..@columns
        puts matriz[i][j]
      end
    end
  end
end
