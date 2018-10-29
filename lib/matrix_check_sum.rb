# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
require 'pry'

def matrix_check_sum(matrix)
  matrix.length.times do |m|
    row_sum = 0
    column_sum = 0
    matrix[m].length.times do |x|
      row_sum += matrix[m][x]
      column_sum += matrix[x][m]
    end

    if row_sum != column_sum
      return false
    end
  end

  return true
end


# matrix = [[1, 2, 3, 4], [9, 5, 3, 1], [0, 3, 5, 6], [0, 8, 3, 6]]
#
# print matrix_check_sum(matrix)
