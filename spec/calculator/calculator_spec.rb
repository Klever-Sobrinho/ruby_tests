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
  
---Implicit Subject:
    subject.sum(-5, 7)

    describe classePai do
      describe ClasseFilha do -- subject is the more deep describe
      end
    end  

---Explicit Subject:
    subject(:calc) { described_class.new() }

    describe Calculator, "about calculator" do
    end  

    subject(:calc) { described_class.new(1,2,3) }
=end