class NumberWords
  def initialize(number)
    @num = number
  end
  def numbers_to_words(num)
    number_words = Hash.new()
    word = 'one'
    number_words.store(num, word)
    number_words.fetch(num)
  end
end


# store hash, then fetch hash that will take key as the argument and return value