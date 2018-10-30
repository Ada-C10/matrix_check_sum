# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time Complexity: O(n2)
# Space Complexity: O(1)

def matrix_check_sum(matrix)

  column = 0

  matrix.each do |row|
    sum_row = 0

    row.each do |value|
      sum_row += value
    end

    sum_column = 0

    matrix.size.times do |i|
      sum_column += matrix[i][column]
    end

    if sum_row != sum_column
      return false
    end

    column += 1
  end

  return true

end
