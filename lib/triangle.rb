class Triangle
  MAX_NUMBER = 40

  def initialize(row)
    validate_number(row)
    @row = row
    @pascal_triangle = [[1]]
  end

  def triangle_calculator
    i = 0
    (i...@row).each do
      @pascal_triangle << [1] + @pascal_triangle.last.each_cons(2).map { |first, second| first + second } + [1]
    end
    @pascal_triangle.map { |item| item.join(' ').center(@row * 3) }
  end

  private

  def validate_number(row)
    return unless row > MAX_NUMBER

    begin
      raise ArgumentError,  'You have entered a number greater than 40!'
    rescue StandardError => e
      puts "An error of type #{e.class} happened, message is: #{e.message}"
      exit
    end
  end
end
