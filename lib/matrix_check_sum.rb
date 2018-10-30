# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  per_line = matrix.length
  col_index = 0

  matrix.each do |row|
    row_sum = 0
    per_line.times do |i|
      row_sum += row[i]
    end

    col_sum = 0
    per_line.times do |i|
      col_sum += matrix[i][col_index]
    end

    if row_sum == col_sum
      col_index += 1
    else
      return false
    end

  end
  return true
end


# the time complexity for this solution is O(n^2) because for each element in a column, it also has to iterate over each element in the corresponding row.
# the space complexity is O(1) because the only memory required is a few iteration variables and the accumulators
