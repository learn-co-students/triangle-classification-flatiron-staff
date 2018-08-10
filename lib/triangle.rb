class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 == 0 || @side2 == 0 || @side3 == 0
        begin
          raise TriangleError
        rescue TriangleError => error
          puts error.message
        end
    elsif @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      return :isosceles
    elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      return :scalene
    else
      nil
    end

  end

  class TriangleError < StandardError
    def message
      "you must !"
    end
  end
end
