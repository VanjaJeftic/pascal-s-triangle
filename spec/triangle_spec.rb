require 'triangle'

describe Triangle do
  context 'Triangle: row = 0' do
    it 'returns " 1 \n"' do
      triangle = Triangle.new(0)
      expect { triangle.triangle_calculator }.to output(" 1 \n").to_stdout
    end
  end

  context 'Triangle: row = 1' do
    it 'returns "  1 \n 1 1 \n"' do
      triangle = Triangle.new(1)
      expect { triangle.triangle_calculator }.to output("  1 \n 1 1 \n").to_stdout
    end
  end

  context 'Triangle: row = 2' do
    it 'returns "   1 \n  1 1 \n 1 2 1 \n"' do
      triangle = Triangle.new(2)
      expect { triangle.triangle_calculator }.to output("   1 \n  1 1 \n 1 2 1 \n").to_stdout
    end
  end

  context 'Triangle: row = 3' do
    it 'returns "    1 \n   1 1 \n  1 2 1 \n 1 3 3 1 \n"' do
      triangle = Triangle.new(3)
      expect { triangle.triangle_calculator }.to output("    1 \n   1 1 \n  1 2 1 \n 1 3 3 1 \n").to_stdout
    end
  end

  context 'Triangle: row = 4' do
    it 'returns "     1 \n    1 1 \n   1 2 1 \n  1 3 3 1 \n 1 4 6 4 1 \n"' do
      triangle = Triangle.new(4)
      test_string = "     1 \n    1 1 \n   1 2 1 \n  1 3 3 1 \n 1 4 6 4 1 \n"
      expect { triangle.triangle_calculator }.to output(test_string).to_stdout
    end
  end

  context 'Triangle: row = 5' do
    it 'returns "      1 \n     1 1 \n    1 2 1 \n   1 3 3 1 \n  1 4 6 4 1 \n 1 5 10 10 5 1 \n"' do
      triangle = Triangle.new(5)
      test_string = "      1 \n     1 1 \n    1 2 1 \n   1 3 3 1 \n  1 4 6 4 1 \n 1 5 10 10 5 1 \n"
      expect { triangle.triangle_calculator }.to output(test_string).to_stdout
    end
  end
end
