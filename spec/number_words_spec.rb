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
  it("should return the word equivalent of a two-digit number ending in 0") do
    num = NumberWords.new(80)
  expect(num.numbers_to_words(num)).to(eq('eighty'))
  end
  it("should return the word equivalent of a two-digit number not ending in 0") do
    num = NumberWords.new(55)
  expect(num.numbers_to_words(num)).to(eq('fiftyfive'))
  end
end