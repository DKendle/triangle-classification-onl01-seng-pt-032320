class Triangle
 
 
    def initialize(side_1, side_2, side_3)
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
    end
    
    def kind 
      if side_1 <= 0 || side_2 <= 0 || side_3 <=0 
        raise TriangleError
      else
        (side_1 == side_2 && side_2 == side_3)
        :equilateral
        (side_1 == side_2 && side_2 != side_3)
        :isosceles
        (side_1 != side_2 && side_2 != side_3)
        :scalene
      end
    end
 
 class TriangleError < StandardError
 end
 
end
