class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if (side1 + side2) <= side3 || (side1 + side3) <= side2 || (side2 + side3) <= side1
      #begin 
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    elsif side1 <= 0 || side2 <= 0 || side3 <= 0
      #begin 
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    else
      if side1 == side2 && side2 == side3
        :equilateral
      elsif side1 == side2 || side1 == side3 || side2 == side3
        :isosceles
      else
        :scalene
      end
    end
  end
  
  class TriangleError < StandardError
    # def message 
    #   "The sum of two sides of a triangle must be greater than the third side. All sides must be greater than 0."
    # end
  end
end

#triangle = Triangle.new(1, 0, 3)
#puts triangle.kind