# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
#Time complexity is o(n^2)
#Space Complexity is o(2n)
require 'pry'
def matrix_check_sum(matrix)
  n = 0
  m = 0
  rows = matrix.length
  columns = matrix[0].length
  sumrows = []
  sumcolumns = []
  while n < rows
    while m < columns
      if sumrows[n] == nil
        sumrows[n] = matrix[n][m]
      else
        sumrows[n] += matrix[n][m]
      end

      if sumcolumns[m] == nil
        sumcolumns[m] = matrix[n][m]
      else
        sumcolumns[m]+= matrix[n][m]
      end
      m += 1
    end
    m = 0
    n += 1
  end

  i = 0
  while i < sumrows.length
    if sumrows[i] == sumcolumns[i]
      i += 1
    else
      return false
    end
  end
  return true

end
