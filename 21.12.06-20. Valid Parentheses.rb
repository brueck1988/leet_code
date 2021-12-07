# # Technical Challenge Prompt
# 20. Valid Parentheses (Easy)
# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
# 
# An input string is valid if:
# 
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# 
# 
# Example 1:
# 
# Input: s = "()"
# Output: true
# Example 2:
# 
# Input: s = "()[]{}"
# Output: true
# Example 3:
# 
# Input: s = "(]"
# Output: false
# Example 4:
# 
# Input: s = "([)]"
# Output: false
# Example 5:
# 
# Input: s = "{[]}"
# Output: true
# 
# 
# Constraints:
# 
# 1 <= s.length <= 104
# s consists of parentheses only '()[]{}'.

# # Pseudocode
# For ( [ {
# if there is an opening bracket 
#   there must be a closing bracket
#   next type of the same bracket must be closing bracket
# 
# if there is a closing bracket before an opening bracket
#   return false
# 
# if opening bracket is not closed
#   return false
# 
# if closing bracket appears before opening bracket
#   return false  
# 
# Iterate through string with .each_char do |char|
#   opening_brackets = ["(", "[", "{"]
#   closing_brackets = [")", "]", "}"]
#   if first character is closing bracket 
#     return false
#   else  
#     if char == "{"
#       iterate through array do |second_char|
#         if second_char == "{"
#           return false
#         elsif second_char == "}"
#           remove first character and second character from array
#         else
#           no_match = "Matching bracket not found"
#         end
#       end
#       return false if no_match == "Matching bracket not found"
#     elsif char == "["
#       iterate through array do |second_char|
#         if second_char == "["
#           return false
#         elsif second_char == "]"
#           remove first character and second character from array
#         else
#           no_match = "Matching bracket not found"
#         end
#       end
#       return false if no_match == "Matching bracket not found"
#     else char == "("
#       iterate through array do |second_char|
#         if second_char == "("
#           return false
#         elsif second_char == ")"
#           remove first character and second character from array
#         else
#           no_match = "Matching bracket not found"
#         end
#       end
#       return false if no_match == "Matching bracket not found"
#     end
#   end
# end


# 
# # Solution

# @param {String} s
# @return {Boolean}
def is_valid(s)


end


s = "([)]"


print is_valid(s)