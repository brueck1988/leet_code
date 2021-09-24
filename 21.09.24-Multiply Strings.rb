# Technical Challenge Prompt
# 43. Multiply Strings
# Medium
# 
# 3094
# 
# 1213
# 
# Add to List
# 
# Share
# Given two non-negative integers num1 and num2 represented as strings, return the product of num1 and num2, also represented as a string.
# 
# Note: You must not use any built-in BigInteger library or convert the inputs to integer directly.
# 
# 
# 
# Example 1:
# 
# Input: num1 = "2", num2 = "3"
# Output: "6"
# Example 2:
# 
# Input: num1 = "123", num2 = "456"
# Output: "56088"
# 
# 
# Constraints:
# 
# 1 <= num1.length, num2.length <= 200
# num1 and num2 consist of digits only.
# Both num1 and num2 do not contain any leading zero, except the number 0 itself.


# Pseudocode
# initialize count at zero
# initialize sum at zero
# reverse string
# iterate through string with each
  # convert string to integer with conditionals
  # sum += digit*10^count
# end
  
    

#Solution

def multiply(num1, num2)
    # int1 = num1.to_i
    # int2 = num2.to_i
    # numeric_answer = int1 * int2
    # string_answer = numeric_answer.to_s
    int1 = to_integer(num1)
    int2 = to_integer(num2)
    numeric_answer = int1 * int2
    string_answer = "#{numeric_answer}"
end

def to_integer(num)
    if num == "0"
      return 0
    end
    sum = 0
    num.reverse!
    num.each_char.with_index do |num, index|
        if num == "0"
            sum += 0
        else
            array = ["0","1","2","3","4","5","6","7","8","9"]
            int = array.find_index(num)
            sum += int*10**index
        end  
    end
    return sum
end

print multiply("488", "5")

