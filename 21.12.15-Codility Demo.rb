# Pseudocode
# quick_sort array
# Remove duplicates
# if sorted_array[0] > 1
#   Return 1
# if sorted_array[1] > 2
#   Return 2
# if sorted_array[2] > 3
#   Return 3

def quick_sort(array)
  if array.length > 1
    pivot = array.pop
    lesser = []
    greater = []
    array.each do |integer|
      if integer < pivot
        lesser.push(integer)
      else
        greater.push(integer)
      end
    end
    array = quick_sort(lesser) + [pivot] + quick_sort(greater)
  end
  array
end

def solution(a)
  sorted_array = quick_sort(a).uniq
  (1..100000).each do |n|
    if sorted_array[n-1] > n
      return n
    end
  end
end

a = [1, 3, 6, 4, 1, 2, 17, 5, 7]

time_1 = Time.now
puts solution(a)
time_2 = Time.now
time_elapsed = time_2 - time_1
puts time_elapsed.to_s