# # Technical Challenge Prompt
# 27. Remove Element (Easy)
# 
# Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The relative order of the elements may be changed.
# 
# Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.
# 
# Return k after placing the final result in the first k slots of nums.
# 
# Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.
# 
# Custom Judge:
# 
# The judge will test your solution with the following code:
# 
# int[] nums = [...]; // Input array
# int val = ...; // Value to remove
# int[] expectedNums = [...]; // The expected answer with correct length.
#                             // It is sorted with no values equaling val.
# 
# int k = removeElement(nums, val); // Calls your implementation
# 
# assert k == expectedNums.length;
# sort(nums, 0, k); // Sort the first k elements of nums
# for (int i = 0; i < actualLength; i++) {
#     assert nums[i] == expectedNums[i];
# }
# If all assertions pass, then your solution will be accepted.
# 
# 
# 
# Example 1:
# 
# Input: nums = [3,2,2,3], val = 3
# Output: 2, nums = [2,2,_,_]
# Explanation: Your function should return k = 2, with the first two elements of nums being 2.
# It does not matter what you leave beyond the returned k (hence they are underscores).
# Example 2:
# 
# Input: nums = [0,1,2,2,3,0,4,2], val = 2
# Output: 5, nums = [0,1,4,0,3,_,_,_]
# Explanation: Your function should return k = 5, with the first five elements of nums containing 0, 0, 1, 3, and 4.
# Note that the five elements can be returned in any order.
# It does not matter what you leave beyond the returned k (hence they are underscores).
# 
# 
# Constraints:
# 
# 0 <= nums.length <= 100
# 0 <= nums[i] <= 50
# 0 <= val <= 100

# # Pseudocode
# Initialize k at 0
# Iterate through nums array with each
#   if element matches val
#     replace element with blank
#   else 
#     move element to first position in array
#     k += 1
#   end

# 
# # Solution
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  # Two line solution
  nums.delete(val)
  nums.size
#   idx1 = 0
# (0...nums.length).each do |idx2|
#     if val != nums[idx2]
#         nums[idx1] = nums[idx2]
#         idx1 += 1
#     end
#     require "pry";binding.pry
# end
# 
# return idx1
#   return 0 if nums.length == 0
# nums.each_with_index do |num, index|
# if num == val
#     nums[index] = nil
# end
# end
# nums.compact!
# nums.length


  # k = 0
  # count = 0
  # array_count = nums.count
  # while array_count >= count
  #   if nums[0] == val
  #     nums.delete_at(count)
  #   else
  #     require "pry";binding.pry
  #     nums.push(nums.delete(nums[count]))
  #     # nums.unshift(nums[count])
  #     # nums.delete_at(count)
  #     k += 1
  #   end
  #   count += 1    
  # end
  # print "#{k}, nums = #{nums}"
end
nums = [5,3,2,2,3,2,5,1]
val = 3
print remove_element(nums, val)