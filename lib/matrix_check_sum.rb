# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
require 'pry'
def matrix_check_sum(matrix)
  row_sum = 0
  column_sum = 0

  matrix.length.times do |i| # the # of rows there are
    matrix[i].length.times do |j| # the # of columns in this row
      row_sum += matrix[i][j] #row 0 column 0, row 0 column 1, row 0 column 2
      column_sum += matrix[j][i]
    end
    if row_sum != column_sum
      return false
    end
  end
  return true
end
