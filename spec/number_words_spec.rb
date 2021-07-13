require 'rspec'
require 'number_words'

describe('#numbers_to_words') do
  it("should return the word equivalent of 1") do
    num = NumberWords.new(1)
  expect(num.numbers_to_words(num)).to(eq('one'))
  end
end