#require 'pry'

class Triangle
  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end


  def kind

    if first <= 0 || second <= 0 || third <= 0
      raise TriangleError
    elsif first + second <= third || second + third <= first || first + third <= second
      raise TriangleError
    end

    if first == second && second == third && third == first
      :equilateral
    elsif first != second && second == third || first == third && second != third || first == second && second != third
      :isosceles
    elsif first != second && second != third && third != first
      :scalene
    end
  end


end

class TriangleError < StandardError
end
