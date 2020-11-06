require_relative 'lib/triangle'

print 'Enter the number of rows: '
input_number = gets.chomp.to_i

begin
  triangle = Triangle.new(input_number)
rescue ArgumentError => e
  puts "An error of type #{e.class} happened, message is: #{e.message}"
  exit
end

puts "***TRIANGLE***\n\n"
puts triangle.to_s

puts "\n\n***REVERSE TRIANGLE***\n\n"
puts triangle.to_s.reverse!
