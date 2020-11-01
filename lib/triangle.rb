class Triangle
  MAX_NUMBER = 30

  def initialize(row)
    validate_number(row)
    @row = row + 1
  end

  def triangle_calculator
    i = 0
    j = 0

    (i...@row).each do |i_item|
      (0...@row - i_item).each do
        print ' '
      end

      (j..i_item).each do |j_item|
        rez = coefficient(i_item, j_item).to_s
        print "#{rez} "
      end
      puts ''
    end
  end

  private

  def coefficient(row, interval)
    factoriel(row) / (factoriel(interval) * factoriel(row - interval))
  end

  def factoriel(rows)
    fact = 1
    i = 1
    (i..rows).each do |i_fact_item|
      fact *= i_fact_item
    end
    fact
  end

  def validate_number(row)
    return unless row > MAX_NUMBER

    raise ArgumentError, 'You have entered a number greater than 30!'
  end
end
