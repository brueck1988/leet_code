# Technical Challenge Prompt
# 48. Rotate Image
# Medium

# You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).
# 
# You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.
# 
# Example 1:
# Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
# Output: [[7,4,1],[8,5,2],[9,6,3]]

# Example 4:
# Input: matrix = [[1,2],[3,4]]
# Output: [[3,1],[4,2]]
# 
# 
# Constraints:
# matrix.length == n
# matrix[i].length == n
# 1 <= n <= 20
# -1000 <= matrix[i][j] <= 1000


# Pseudocode
# 0,0 to 0,2
# 0,1 to 1,2
# 0,2 to 2,2
# row = 0
# row = row + 1
# column = 2 (matrix.count - 1)

# 1,0 to 0,1
# 1,1 to 1,1
# 1,2 to 2,1
# # row = 0
# row = row + 1
# column = 1 (column - 1)

# 2,0 to 0,0
# 2,1 to 1,0
# 2,2 to 2,0
# # row = 0
# row = row + 1
# column = 0 (column - 1)

#Solution

def rotate(matrix)
  length = matrix.length
  matrix.reverse!
  length.times do |row|
    length.times do |count|
      matrix[count] << matrix[row].slice!(0)
    end
  end
  matrix
end

matrix = [[1,2,3],[4,5,6],[7,8,9]]
print rotate(matrix)

