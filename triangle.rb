# Triangle Project Code.

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
def triangle(a, b, c)
  # WRITE THIS CODE
  sides = [a,b,c]
  if sides.select{|side| side <= 0}.length > 0
    raise TriangleError, "Triangles cannot have <= 0 side lengths"
  elsif a+b <= c or a+c <= b or b+c <= a
    raise TriangleError, "Triangle fails inequality test"
  end

  uniq_sides = sides.map {|i| i.to_f}.uniq.length
  if uniq_sides == 1
    return :equilateral
  elsif uniq_sides == 2
    return :isosceles
  else
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
