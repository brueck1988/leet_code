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
For ( [ {
if there is an opening bracket 
  there must be a closing bracket
  next type of the same bracket must be closing bracket
  
if there is a closing bracket before an opening bracket
  return false
  
if opening bracket is not closed
  return false
  
if closing bracket appears before opening bracket
  return false  
  
Iterate through string with .each_char do |char|
  opening_brackets = ["(", "[", "{"]
  closing_brackets = [")", "]", "}"]
  if first character is closing bracket 
    return false
  else  
    if char == "{"
      iterate through array do |second_char|
        if second_char == "{"
          return false
        elsif second_char == "}"
          remove first character and second character from array
        else
          no_match = "Matching bracket not found"
        end
      end
      return false if no_match == "Matching bracket not found"
    elsif char == "["
      iterate through array do |second_char|
        if second_char == "["
          return false
        elsif second_char == "]"
          remove first character and second character from array
        else
          no_match = "Matching bracket not found"
        end
      end
      return false if no_match == "Matching bracket not found"
    else char == "("
      iterate through array do |second_char|
        if second_char == "("
          return false
        elsif second_char == ")"
          remove first character and second character from array
        else
          no_match = "Matching bracket not found"
        end
      end
      return false if no_match == "Matching bracket not found"
    end
  end
end


# 
# # Solution

# @param {String} s
# @return {Boolean}
def is_valid(s)
  opening_brackets = ["(", "[", "{"]
  closing_brackets = [")", "]", "}"]
  s.each_char_with_index do |char, char_index|
    closing_brackets.each do |closing_bracket|
      if char == closing_bracket 
        return false
      end
    end
    opening_brackets.each_with_index do |opening_bracket, bracket_index|
      if char == opening_bracket
        
        s.each_char_with_index do |second_char, second_char_index|
          skip if second_char_index == 0
          if second_char == opening_bracket
            return false
          elsif second_char == closing_brackets[bracket_index]
            s.slice!(0)
            s.slice!(second_char_index)
          else
            no_match = "Matching bracket not found"
          end
        end
        return false if no_match == "Matching bracket not found"
      end
    end
  end
end


list1 = [2,4,3]
list2 = [5,6,4]

print merge_two_lists(list1, list2)