# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

require 'pry'
def matrix_check_sum(matrix)
  i = 0
  matrix_len = matrix.length #rows

  matrix_len.times do

    c_sum = 0
    r_sum = 0
    j = 0

    row_len = matrix[i].length

    row_len.times do


      if matrix[j][i] != nil
        c_sum += matrix[j][i]
      end

      if matrix[i][j] != nil
        r_sum += matrix[i][j]
      end

      j+= 1
    end

    if c_sum != r_sum
      return false
    end

    i += 1
  end

  return true
end
