# @param {Integer} x
# @return {Integer}
def reverse(x)
    min = -2**31
    max = 2**31 - 1
 
    
    reverseX = x.abs.to_s.split("").reverse.join("").to_i
    puts reverseX
    return 0 if reverseX < min || reverseX > max
    if x < 0 
        reverseX *= -1
    else 
        reverseX
    end
end
