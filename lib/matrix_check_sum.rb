# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n x n)
# Space complexity: O(1)

def matrix_check_sum(matrix)

  matrix.length.times do |i|
    column_sum = 0
    row_sum = matrix[i].sum

    matrix.length.times do |j|
      column_sum += matrix[j][i]
    end
    return false if row_sum != column_sum
  end

  return true
end
