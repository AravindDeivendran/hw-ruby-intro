# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    retValue = 0
    arr.each { |v| retValue += v }
    return retValue
end

def max_2_sum arr
    arr = arr.sort { |x,y| y <=> x }

    if arr.length == 0
        return 0
    elsif arr.length == 1
        return arr[0]
    else
        return arr[0] + arr[1]
    end
end

def sum_to_n? arr, n

  
  for i in 0..arr.length-1
  for j in i+1..arr.length-1
      if arr[i]+arr[j] == n
        return true
      end
  end
  end
  

  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
   if s.length == 0
       return false
   end
   
    if s[0].match("[a-zA-Z]") == nil
       return false
    end
   
  if ['a', 'e', 'i', 'o', 'u', 'A', 'E','I','O','U'].include? s[0]
      return false
    else
      return true
  end
end

def binary_multiple_of_4? s
  if s.match('^[0-1]+$') == nil
    return false
  end
        
  
  if s.to_i(2) % 4 == 0
      return true
  end
  return false
end

# Part 3

class BookInStock
 def initialize(isbn,price)
   unless price.is_a?(Numeric) and price > 0 and isbn != ""
    raise ArgumentError.new("Only numbers are allowed")
   end
   @isbn = isbn
   @price = price
 end
 
 attr_accessor :isbn
 attr_accessor :price
 
 
 
 def price_as_string
   return "$%.2f" % @price
 end
 
end
