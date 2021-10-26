# # Technical Challenge Prompt
# 2. Add Two Numbers (Medium)
# You are given two non-empty linked lists representing two non-negative integers. 
# The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
# 
# You may assume the two numbers do not contain any leading zero, except the number 0 itself.
# Example 1:
# 
# 
# Input: l1 = [2,4,3], l2 = [5,6,4]
# Output: [7,0,8]
# Explanation: 342 + 465 = 807.
# Example 2:
# 
# Input: l1 = [0], l2 = [0]
# Output: [0]
# Example 3:
# 
# Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
# Output: [8,9,9,9,0,0,0,1]
# 
# 
# Constraints:
# 
# The number of nodes in each linked list is in the range [1, 100].
# 0 <= Node.val <= 9
# It is guaranteed that the list represents a number that does not have leading zeros.
# 
# 
# 
# # Pseudocode
# first input.count.times do
#   slice last element off of array until array is empty
#     Take element and shovel it into string1
# end
# 
# second input.count.times do
#   slice last element off of array until array is empty
#     Take element and put it into string2
# end
# 
# total = string1 + string2
# 
# Iterate through “total”
#   slice last element off of array until array is empty
#     Take element and put it into array1
# end
# 
# return array1
# 
# # Solution

def add_two_numbers(l1, l2)
  l1.count.times do 
    
end

l1 = [2,4,3]
l2 = [5,6,4]

print add_two_numbers(l1, l2)