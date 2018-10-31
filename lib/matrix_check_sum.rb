require 'pry'
# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
#time complexity is n^2 space complexity O(1)-constant
def matrix_check_sum(matrix)

  length = matrix.length
  sum_row = 0
  sum_column = 0
  k = 0

  while k < length
    j = 0
    i = 0

    length.times do
      sum_row = matrix[k][j] + sum_row
      j += 1

    end

    length.times do
      sum_column = matrix[i][k] + sum_column
      i += 1
    end

    if sum_row != sum_column
      return false
    end

    k += 1

  end
  return true
  # raise NotImplementedError
end
