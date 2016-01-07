# Enter your object-oriented solution here!
class LargestPrimeFactor
  def initialize(input)
    @input = input
  end

  def number
    large_prime = Math.sqrt(@input).floor

    while !factor?(large_prime, @input) || !prime?(large_prime) do
      large_prime -= 1
    end

    large_prime
  end

  def factor?(factor, num)
    if num % factor == 0
      return true
    else
      return false
    end
  end

  #code taken from my ruby-001-prework-lab
  def prime?(num)
    if num <= 1
      return false
    
    elsif num <= 3
      return true
    
    elsif num % 2 == 0 || num % 3 == 0
      return false

    else
      i = 5
      while i * i < num
        if num % i == 0 || num % (i + 2) == 0
          return false
        end
        i = i + 6
      end
      return true

    end
  end
end