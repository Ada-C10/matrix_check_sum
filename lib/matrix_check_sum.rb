# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)

  length = matrix.length
  counter = 0

  while counter < length
    row_sum = 0
    column_sum = 0

    length.times do |i|
      row_sum += matrix[i][counter]
      column_sum += matrix[counter][i]
    end

    if row_sum == column_sum
      return true
    end

    counter += 1
  end

  return false
end
