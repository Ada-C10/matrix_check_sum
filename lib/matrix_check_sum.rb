# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

#time complexity: On2. Nested loops. Everytime the outer loop executes (n), the innner loop excutes m times. n * m = On2
# space complexity: O1 - constant as there will always be the same amout of variables needed no matter how big the matrix is


def matrix_check_sum(matrix)


  matrix.each_with_index do |value, index|
    row_sum = value.sum

    column_sum = 0
    matrix.each do |arr|
      column_sum += arr[index]
    end

    if column_sum != row_sum
      return false
    end

  end
  return true
end
