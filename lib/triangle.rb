class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def equilateral?
    @a == @b && @b == @c
  end

  def isosceles?
    @a == @b || @b == @c || @a == @c
  end

  def scalene?
    @a != @b && @a != @c && @b != @c
  end

  def valid?
    @a+@b>@c && @a+@c>@b && @b+@c>@a && @a>0 && @b>0 && @c>0
  end

  def kind
    if !valid?
      raise TriangleError
    else
      if equilateral?
        :equilateral
      elsif isosceles?
        :isosceles
      elsif scalene?
        :scalene
      end
    end
  end

end

class TriangleError < StandardError

end
