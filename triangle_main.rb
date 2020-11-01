require_relative 'lib/triangle'

print 'Enter the number of rows: '

input_number = gets.chomp.to_i

triangle = Triangle.new(input_number)

triangle.triangle_calculator
