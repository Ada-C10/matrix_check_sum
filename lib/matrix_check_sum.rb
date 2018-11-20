# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  sum_boo = false
  n = matrix[0].length

  n.times do |i|
    sum_row += n[i]
  end

  raise NotImplementedError
end
