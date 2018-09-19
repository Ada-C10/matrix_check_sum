# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  row_sum = 0
  column_sum = 0
  index = 0

  while matrix[index] != nil do
    j = 0
    while matrix[index][j] != nil do
      row_sum += matrix[index][j]
      j += 1
    end

    k = 0
    while matrix[k] != nil do
      column_sum += matrix[k][index]
      k += 1
    end

    return false if row_sum != column_sum

    index += 1
  end

  return true
end

puts matrix_check_sum([[1, 2, 3, 8], [9, 5, 3, 1], [0, 3, 5, 6], [0, 8, 3, 6]])
