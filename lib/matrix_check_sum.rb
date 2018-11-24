# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  sum_boo = false
  n = matrix[0].length
  sum_row = 0
  sum_col = 0
  i = 0
  j = 0
  x = 0
  while x < n
    while j < n
      sum_row += matrix[i][j]
      j += 1
    end

    while i < n
      sum_col += matrix[i][j]
      i += 1
    end

    if sum_row == sum_col
      x += 1
    else
      return false
    end

  end

end
