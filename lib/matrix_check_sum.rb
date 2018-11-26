# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  rows = matrix.length
  columns = matrix[0].length

  i = 0
  row_sum = 0
  column_sum = 0


  while i < rows
    j = 0

    while j < columns
      row_sum += matrix[i][j]
      column_sum += matrix[j][i]
      j += 1
    end

    return false if row_sum != column_sum
    i += 1
  end

  return true

  # raise NotImplementedError
end

# Time Complexity: O(n*m) where n is the number of rows and m is the number of columns. Overall, O(n^2)

# Space Complexity: O(1) since we are not taking in additional space as input increases
