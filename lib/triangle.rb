class Triangle
  attr_reader :kind

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    num_unique_sides = @sides.uniq.length

    raise TriangleError unless is_legal?

    case num_unique_sides
    when 1
      @kind = :equilateral
    when 2
      @kind = :isosceles
    when 3
      @kind = :scalene
    end
  end

  def is_legal?
    positive_sides? && triangle_inequality?
  end

  class TriangleError < StandardError
    def message
      'That is not a triangle!'
    end
  end

  private

  def positive_sides?
    @sides.all? { |side| side > 0 }
  end

  def triangle_inequality?
    @sides[0] + @sides[1] > @sides[2] && 
    @sides[2] + @sides[1] > @sides[0] && 
    @sides[2] + @sides[0] > @sides[1]
  end
end
