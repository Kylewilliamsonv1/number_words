require('pry')

class NumberWords
  def initialize(number)
    @num = number
  end
  def numbers_to_words(num)
    ones_hash = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'sixteen', 18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty'}
    tens_hash = { 2=> 'twenty', 3 => 'thirty', 4 => 'forty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety'}
    hundreds_hash = { 1 => 'one hundred', 2 => 'two hundred', 3 => 'three hundred', 4 => 'four hundred', 5 => 'five hundred', 6 => 'six hundred', 7 => 'seven hundred', 8 => 'eight hundred', 9 => 'nine hundred'}
    thousands_hash = { 1 => 'one thousand', 2 => 'two thousand', 3 => 'three thousand', 4 => 'four thousand', 5 => 'five thousand', 6 => 'six thousand', 7 => 'seven thousand', 8 => 'eight thousand', 9 => 'nine thousand'}
    @word = ''
    if @num <= 20
      @word = ones_hash.fetch(@num)
    elsif @num > 20
      def digits(n)
        Math.log10(n).floor.downto(0).map { |i| (n / 10**i) % 10 }
      end
      array = digits(@num)
      @length = array.length
      if (@length === 2) && (array[1] === 0)
      @word = tens_hash.fetch(array[0])
      elsif (@length === 2) && (array[1] != 0)
      @word = tens_hash.fetch(array[0])
      @word.concat(ones_hash.fetch(array[1]))
    # # number_words.fetch(@num)
    # if length === 2 && length[0] === 1
    #   ones_hash.fetch()
      end
    end
    return @word
  end
end


# x = 876885
# x.to_s.scan(/.../).map {|e| e.to_i }
# => [876, 885]
# x.divmod(1000)

# 386
# three hundred eighty six

# array = number.split('')
# array.length
# if array.length = 3
# num1 = hundreds_hash.fetch(@num)
# array[0].push hundreds

#   # 1,000,000,000,000

# If number has three digits, if first digit is 3, use hundreds hash, if second digit is two, use tens hash, if third digit is 1, use ones hash

# #1 is 'one', 2 is 'two'...
# # store hash, then fetch hash that will take key as the argument and return value