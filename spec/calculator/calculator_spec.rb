require 'calculator'

describe Calculator do
  context '#sum' do
    it 'with positive numbers' do
      result = subject.sum(5, 7)
      expect(result).to eq(12)
    end
    
    it 'with negative and positive numbers' do
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end

    it 'with negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end
end

=begin
  ---Peding with xit
  xit 'with negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end
  ---Run specific test
  rspec spec/calculator/calculator_spec.rb
  
  ---Run specific test by title
  rspec spec/calculator/calculator_spec.rb -e 'with positive numbers'

  ---Run specific test by line
  rspec spec/calculator/calculator_spec.rb:15
  =end