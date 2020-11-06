require 'triangle'

describe Triangle do
  context 'Triangle row = 0' do
    it 'returns "1"' do
      triangle = Triangle.new(0)
      expect(triangle.to_s).to eql(['1'])
    end
  end

  context 'Triangle row = 1' do
    it 'returns " 1 ", "1 1"' do
      triangle = Triangle.new(1)
      expect(triangle.to_s).to eql([' 1 ', '1 1'])
    end
  end

  context 'Triangle row = 2' do
    it 'returns "  1   ", " 1 1  ", "1 2 1 "' do
      triangle = Triangle.new(2)
      expect(triangle.to_s).to eql(['  1   ', ' 1 1  ', '1 2 1 '])
    end
  end

  context 'Triangle row = 3' do
    it 'returns "    1    ", "   1 1   ", "  1 2 1  ", " 1 3 3 1 "' do
      triangle = Triangle.new(3)
      expect(triangle.to_s).to eql(['    1    ', '   1 1   ', '  1 2 1  ', ' 1 3 3 1 '])
    end
  end

  context 'Triangle row = 4' do
    it 'returns "     1      ", "    1 1     ", "   1 2 1    ", "  1 3 3 1   ", " 1 4 6 4 1  "' do
      triangle = Triangle.new(4)
      test = ['     1      ', '    1 1     ', '   1 2 1    ', '  1 3 3 1   ', ' 1 4 6 4 1  ']
      expect(triangle.to_s).to eql(test)
    end
  end
end
