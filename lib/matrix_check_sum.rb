# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
# Time complexity O(rows * columns)
# Space complaxity is CONSTANT
def matrix_check_sum(matrix)
 length = matrix.length
 check = true
 count = 0
 while count < length
    sum_row = 0
    sum_column = 0

    length.times do |column|
      sum_row += matrix[count][column]
    end

    length.times do |row|
      sum_column += matrix[row][count]
    end

    if sum_row != sum_column
      check = false
    end

    count += 1
  end
  return check
end
