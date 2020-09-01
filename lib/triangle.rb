require "pry"
class Triangle
  attr_accessor :x, :y, :z


  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if self.valid == false && self.valid2 == false
      raise TriangleError.error
    elsif x == y && y == z && z == x
      :equilateral
    elsif x != y && y != z && x != z
      :scalene
    else
      :isosceles
    end
    #binding.pry
  end

  class TriangleError < StandardError
    
  end

  def self.valid(x, y, z)
    (x + y) > z && (x + z) > y && (y + z) > x ? true : false
  end

  def self.valid2(x, y, z)
    x > 0 && y > 0 && z > 0 ? true : false
  end

end
