require 'pry'

class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    # triangle = Triangle.new
    # if triangle.side_one <= 0 || triangle.side_two <= 0 || triangle.side_three <= 0
    #   raise TriangleError
    sides = [@side_one, @side_two, @side_three]
    if sides[0] <= 0 || sides[1] <= 0 || sides[2] <= 0
      raise TriangleError
    elsif sides[0] + sides[1] <= sides[2] || sides[0] + sides[2] <= sides[1] || sides[1] + sides[2] <= sides[0]
      raise TriangleError
    elsif @side_one == @side_two && @side_one == @side_three
      :equilateral
    elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
