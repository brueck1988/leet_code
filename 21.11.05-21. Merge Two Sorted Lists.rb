# # Technical Challenge Prompt
# 21. Merge Two Sorted Lists (Easy)
# You are given the heads of two sorted linked lists list1 and list2.
# 
# Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
# 
# Return the head of the merged linked list.
# 
# 
# 
# Example 1:
# 
# 
# Input: list1 = [1,2,4], list2 = [1,3,4]
# Output: [1,1,2,3,4,4]
# Example 2:
# 
# Input: list1 = [], list2 = []
# Output: []
# Example 3:
# 
# Input: list1 = [], list2 = [0]
# Output: [0]
# 
# 
# Constraints:
# 
# The number of nodes in both lists is in the range [0, 50].
# -100 <= Node.val <= 100
# Both list1 and list2 are sorted in non-decreasing order.
# 
# 
# 
# # Pseudocode

# 
# # Solution
class LinkedList
  attr_accessor :head
  
  def initialize
    @head = nil
  end
  
  def add(value)
    if self.head.nil?
      self.head = Node.new(value, nil)
    else
      last_node = self.head
      until(last_node.next.nil?)
        last_node = last_node.next
      end
      last_node.next = Node.new(value, nil)
    end
  end
  
  def find(value)
    node = self.head
    until node.nil?
      if node.value == value
        return true        
      end
      node = node.next
    end
    false
  end
  
  private
  
  class Node
    attr_accessor :value, :next
    def initialize(value, _next)
      @value = value
      @next = _next
    end
  end
end

linked_list = LinkedList.new
linked_list.add(10)
linked_list.add(20)
puts linked_list.head.value
puts linked_list.head.next.value
puts linked_list.find(10)
puts linked_list.find(70)
puts linked_list.find(20)

# 
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
# 
# def merge_two_lists(list1, list2)
#   require "pry";binding.pry
#   node1 = list1
#   node2 = list2
#   out = Array.new
#   while (node1 != nil && node2 != nil) do
#      if(node1.val <= node2.val)
#        out.push(node1.val)  
#        node1 = node1.next  
#      else
#          out.push(node2.val)
#          node2 = node2.next
#      end    
#   end
#   if(node1 != nil)
#     while(node1 != nil)
#         out.push(node1.val)
#         node1 = node1.next
#     end    
#   end
#   if(node2 != nil )
#     while(node2 != nil)
#         out.push(node2.val)
#         node2 = node2.next
#     end 
#   end    
#   return out 
# end
# 
# list1 = [2,4,3]
# list2 = [5,6,4]
# 
# print merge_two_lists(list1, list2)