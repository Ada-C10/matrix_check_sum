# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

def matrix_check_sum(matrix)
  row = 0

  while row < matrix.length
    column_sum = 0
    
    matrix.length.times do |i|
      column_sum += matrix[i][row]
    end

    return false unless matrix[row].sum == column_sum
    row += 1

  end
  return true
end

# Time complexity: O(n)
# Space complexity: O(1)
