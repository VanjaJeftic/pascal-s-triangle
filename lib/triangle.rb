class Triangle
  MAX_NUMBER = 30

  def initialize(row)
    validate_number(row)
    @row = row
    @triangles = {}
  end

  def to_s
    check_triangle.map { |item| item.join(' ').center(@row * 3) }
  end

  private

  def check_triangle
    if @triangles.key?(:@row)
      @triangles[:@row]
    else
      @triangles[:@row] = triangle_calculator
    end
  end

  def triangle_calculator
    triangle = [[1]]
    @row.times do
      triangle << next_row(triangle.last)
    end
    triangle
  end

  def next_row(previous_row)
    inner_elements = previous_row.each_cons(2).map { |first, second| first + second }
    [1] + inner_elements + [1]
  end

  def validate_number(row)
    raise ArgumentError, 'You have entered a number greater than 30!' if row > MAX_NUMBER
  end
end
