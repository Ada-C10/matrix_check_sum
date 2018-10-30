# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# The solution below would have O(n^2) time complexity since the number of rows
# and the number of columns are equal. It would have O(1) space complexity
# because the only additional space in memory required are i, j, and sum, which
# each store an integer value -- no matter the matrix size.

def matrix_check_sum(matrix)
  i = 0
  while i < matrix.length
    j = 0
    sum = 0
    while j < matrix.length
      sum += matrix[i][j]
      sum -= matrix[j][i]
      j += 1
    end
    return false if sum != 0
    i += 1
  end
  return true
end
