# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: 
# Space complexity:

def matrix_check_sum(matrix)
  row_sums = []
  column_sums = []

  matrix.each do |row|
    row_sums << row.sum
  end

  matrix.length.times do |column|
    sum = 0
    matrix.length.times do |row|
      sum += matrix[row][column]
    end
    column_sums << sum
  end

  row_sums.each.with_index do |sum, index|
    return false if sum != column_sums[index]
  end

  return true
end
