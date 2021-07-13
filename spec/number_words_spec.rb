require 'rspec'
require 'number_words'

describe('#numbers_to_words') do
  it("should return the word equivalent of 1") do
    num = NumberWords.new(2)
  expect(num.numbers_to_words(num)).to(eq('two'))
  end
  it("should return the word equivalent of numbers from 1 to 9") do
    num = NumberWords.new(9)
  expect(num.numbers_to_words(num)).to(eq('nine'))
  end
end