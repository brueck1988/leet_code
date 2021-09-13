# Technical Challenge Prompt
# Instructions
# Given a non-negative integer x, compute and return the square root of x.
# 
# Since the return type is an integer, the decimal digits are truncated, and only the integer part of the result is returned.
# 
# Note: You are not allowed to use any built-in exponent function or operator, such as pow(x, 0.5) or x ** 0.5.
# 
# 
# 
# Example 1:
# 
# Input: x = 4
# Output: 2
# Example 2:
# 
# Input: x = 8
# Output: 2
# Explanation: The square root of 8 is 2.82842..., and since the decimal part is truncated, 2 is returned.


#Pseudocode
# Divide x by increasingly large integers (incrememt by 1) until the divisor >= the quotient
  # if the divisor is equal to the quotient, return the divisor.
  # if the divisor is greater than the quotient, return the divisor minus 1.
    

#Solution

# Aproximate integer solution
def sqrt(x)
  divisor = 1
  quotient = x
  until divisor >= quotient
    quotient = x / divisor # 8 4 8/3=>2
    divisor += 1           # 2 3 4
  end
  divisor -= 1 if divisor > quotient
  return divisor
end

print sqrt(8)
# require 'active_support'
# require 'bigdecimal'
# # Precise solution to defined number of decimal places
# def sqrt(x)
#   divisor = BigDecimal("1.000")
#   increment = BigDecimal("1.000")
#   quotient = x
#   4.times do
#     until divisor >= quotient
#       quotient = x / divisor
#       return divisor if divisor == quotient
#       divisor += increment
#     end
#     if divisor >= quotient
#       divisor -= increment 
#     end
#     increment = increment / 10
#   end
#   return divisor
# end
# 
# print sqrt(89765)
# # def sqrt(x)
# #   increment = 1.0
# #   divisor = 1.0
# #   quotient = x / divisor
# #   until divisor >= quotient
# #     quotient = x / divisor
# #     return divisor if divisor == quotient
# #     divisor += increment
# #   end
# #   divisor -= increment if divisor > quotient
# #   increment = increment / 10
# #   divisor = divisor + increment
# # 
# # 
# #   until divisor >= quotient
# #     require "pry";binding.pry
# #     quotient = x / divisor
# #     return divisor if divisor == quotient
# #     divisor += increment
# #   end
# #   divisor -= increment if divisor > quotient
# #   return divisor
# # end
# # 
# # print sqrt(19.36)



    