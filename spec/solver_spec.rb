require_relative '../solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns 1 for 0' do
      expect(subject.factorial(0)).to eq(1)
    end

    it 'returns 1 for 1' do
      expect(subject.factorial(1)).to eq(1)
    end

    it 'returns the correct factorial for positive integers' do
      expect(subject.factorial(5)).to eq(120)
      expect(subject.factorial(10)).to eq(3628800)
    end

    it 'raises an error for negative integers' do
      expect { subject.factorial(-1) }.to raise_error(ArgumentError, 'Factorial is not defined for negative integers.')
    end
  end

  describe '#reverse' do
    it 'reverses the word "hello"' do
      expect(subject.reverse('hello')).to eq('olleh')
    end

    it 'reverses the word "world"' do
      expect(subject.reverse('world')).to eq('dlrow')
    end

    it 'reverses the word "python"' do
      expect(subject.reverse('python')).to eq('nohtyp')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when divisible by 3' do
      expect(subject.fizzbuzz(3)).to eq('fizz')
    end

    it 'returns "buzz" when divisible by 5' do
      expect(subject.fizzbuzz(5)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when divisible by both 3 and 5' do
      expect(subject.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for other cases' do
      expect(subject.fizzbuzz(7)).to eq('7')
    end
  end
end
