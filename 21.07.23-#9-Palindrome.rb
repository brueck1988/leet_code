# Technical Challenge Prompt
# Given an integer x, return true if x is palindrome integer.
# 
# An integer is a palindrome when it reads the same backward as forward. For example, 121 is palindrome while 123 is not.
# 
# 
# 
# Example 1:
# 
# Input: x = 121
# Output: true
# Example 2:
# 
# Input: x = -121
# Output: false
# Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
# Example 3:
# 
# Input: x = 10
# Output: false
# Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
# Example 4:
# 
# Input: x = -101
# Output: false
# 
# 
# Constraints:
# 
# -231 <= x <= 231 - 1



#Pseudocode
# Convert integer to string
# Check if string length is even or odd
  # If even
    # Check to see if first and last characters in string are the same, and
    # remove them if they are, and then do the same thing until length is zero
    # if they are not the same, return false
# If odd
  # Check to see if first and last characters in string are the same, and
  # remove them if they are, and then do the same thing until length is one
  # if they are not the same, return false


  # Check to see if first and last characters in string are the same
    # If true, remove first and last characters and repeat



#Solution
While string.length > 2
if string.length.even?
$flattened_array = []
def flatten_array(array)
  array.each do |element|         # O(n)
    if element.class == Array     # O(1)
      flatten_array(element)      # O(n) - Recursive, so exclude from big O for time, include for space
    else
      $flattened_array << element #O(1)
    end
  end
  $flattened_array
end



print flatten_array([1, 2, 3, [[4], 5], [[[6]]]])
puts "\n\n"
$flattened_array = []
print flatten_array(["hi", "this is", [[["string"], "that is very"], [[[["nested"]]]]]])

    