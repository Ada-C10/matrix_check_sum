# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  n = matrix.length

  n.times do |i|
    sum_row = 0
    sum_column = 0
    n.times do |j|
      sum_column += matrix[i][j]
      sum_row += matrix[j][i]
    end

    if sum_row != sum_column
      return false
    end
  end

  return true
end
