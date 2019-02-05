# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    #arr.empty? ? 0 : arr.last + sum(arr[0, arr.size - 1])
    total = 0
    for i in arr
      total = total + i
    end
    return total
end

def max_2_sum arr
  # YOUR CODE HERE
  total = 0
  if arr.size == 1
    return  arr[0]
  elsif arr.size > 1
    return total = arr.sort[-2]+arr.sort[-1]
  else
    return 0
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
    if arr.empty?
    return false if n == 0
  else
    arr.combination(2).to_a.each do |pair|
      return true if sum(pair) == n
    end
  end

  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+ name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
 return (s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)? true:false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    return /^[01]*(00|0)$/.match(s) ? true:false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :price, :isbn
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn=isbn
    @price=price
  end
  
  def price_as_string
    format('$%.2f',@price)
  end
end
