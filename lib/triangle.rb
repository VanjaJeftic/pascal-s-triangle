class Triangle
  MAX_NUMBER = 30

  def initialize(row)
    validate_number(row)
    @row = row
  end

  def to_s
    triangle_calculator.map { |item| item.join(' ').center(@row * 3) }
  end

  def triangle_calculator
    start_triangle = [[1]]
    i = 0
    (i...@row).each do
      start_triangle << [1] + next_row(start_triangle) + [1]
    end
    start_triangle
  end

  def next_row(triangle_array)
    triangle_array.last.each_cons(2).map { |first, second| first + second }
  end

  def validate_number(row)
    raise ArgumentError, 'You have entered a number greater than 30!' if row > MAX_NUMBER
  end

  private :triangle_calculator, :next_row, :validate_number
end
