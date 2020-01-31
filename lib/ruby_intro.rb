# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for num in arr do
    sum += num
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  #https://www.geeksforgeeks.org/ruby-array-length-function/
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    if arr[0] >= arr[1]
      max1 = arr[0]
      max2 = arr[1]
    else
      max1 = arr[1]
      max2 = arr[0]
    end
    #https://www.geeksforgeeks.org/ruby-loops-for-while-do-while-until/
    #https://www.tutorialspoint.com/ruby/ruby_ranges.htm
    #https://www.tutorialspoint.com/ruby/ruby_if_else.htm
    for i in 2..(arr.length-1) do
      if arr[i] >= max1
        max2 = max1
        max1 = arr[i]
      elsif arr[i] >= max2
        max2 = arr[i]
      end
    end
    
    return max1+max2
    
  end
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  #https://www.tutorialspoint.com/ruby/ruby_ranges.htm
  if arr.length <= 1
    return false
  end
  for i in 0...arr.length() do
    for j in i+1...arr.length() do
      sum = arr[i] + arr[j]
      if sum == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, " + name
  return str
end

#https://www.rubyguides.com/2019/02/ruby-booleans/
def starts_with_consonant? s
  # YOUR CODE HERE
  if(s.length() == 0)
    return false
  elsif (s[0].match(/\p{L}/) == nil)
    return false
  else
    firstLetter = s[0].downcase
    if((firstLetter == "a") or (firstLetter == "e") or (firstLetter == "i") or (firstLetter == "o") or (firstLetter == "u"))
      return false
    else
      return true
    end
  end
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if(s.match(Regexp.new(/(\A[01]*100\Z)|(\A0+\Z)/)) == nil)
    return false
  else
    return true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn, price)
  
  #https://www.geeksforgeeks.org/raising-exceptions-in-ruby/
  if((isbn == "") or (price <= 0))
    raise ArgumentError.new
  end
  
  @isbn = isbn
  @price = price
end

def isbn
  return @isbn
end

def isbn=(newIsbn)
  @isbn = newIsbn
end

def price
  return @price
end

def price=(newPrice)
  @price = newPrice
end

def price_as_string
  formattedP = "%.2f" % @price
  return ("$" + formattedP)
end

end
