# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

#Time complexity is O(n^2), or quadratic, because we have a nested loop that needs to loop through
# the length of each inner array within the outer array as it sums the row and column values
# Space complexity is O(C) because we are storing a set number of variables each time our function is run,
# regardless of the size of the matrix.

def matrix_check_sum(matrix)

  row_sum = 0
  col_sum = 0
  i = 0
  while i < matrix.length
    j = 0
    while j < matrix.length
      row_sum += matrix[i][j]
      col_sum += matrix[j][i]
      j += 1
    end

    if row_sum != col_sum
      return false
    end

    i += 1
  end

  return true
end


# 1 2 3 4
# 9 5 3 1
# 0 3 5 6
# 0 8 3 6
