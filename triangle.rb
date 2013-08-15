# Triangle Project Code.

def triangle(a, b, c)
  raise TriangleError if [a,b,c].min <= 0
  x, y, z = [a,b,c].sort
  raise TriangleError if x + y <= z
  [:equilateral,:isosceles,:scalene].fetch([a,b,c].uniq.size - 1)
end

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

=begin
	
rescue Exception => e
	
end
def triangle(a, b, c)
  if ( a <= 0 || b <= 0 || c <= 0)
  	raise TriangleError, "no sides can be less than or equal to 0"
  elsif ((a >= b + c) || (b >= a + c) || (c >= a+b))
    raise TriangleError, "one side cannot be longer than other two sides combined"	
  elsif (a == b && b == c && a == c)
  	return :equilateral
  elsif (a == b || b == c || a == c)
  	return :isosceles
  else
  	return :scalene
  end
end

=end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
