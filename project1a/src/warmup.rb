def fib(n)
    
    # Error check
    if n < 0 then
        raise ArgumentError, "The number must be a positive integer"
    end

    # Terminating base cases
    return [] if n == 0
    return [0] if n == 1
    return [0,1] if n == 2 

    # Recursion
    seq = fib(n - 1) 

    # The recursive function
    seq << seq[-2] + seq[-1]

    return seq
    
end

def isPalindrome(n)
    return false if n < 0
    num = n
    reverse = 0
    while(num >0) 
        rem = num % 10
        reverse = reverse * 10 + rem
        num /= 10
    end
    reverse == n  
end

def nthmax(n, a)

    # when n is negative
    if n < 0
        return nil 
    end

    num = n + 1

    # sort before find num

    a.sort
    a.sort[-num]

end

def freq(s)

    return "" if s == ""

    arr1 = s.chars

    hash = Hash.new(0)

    arr1.each do |w|
        hash[w] += 1 
    end

    #While hash[key] is very efficient, hash.key(value) 
    #has to search the whole hash. This answer searches the 
    #hash twice: first to find the maximum value, 
    #then to find the key which matches that value

    hash.key(hash.values.max)
  
end

def zipHash(arr1, arr2)
    return {} if arr1 == [] and arr2 == [] 
    return nil if (arr1.size != arr2.size) 

    Hash[arr1.zip(arr2)]
end

def hashToArray(hash)

    hash.to_a
end
