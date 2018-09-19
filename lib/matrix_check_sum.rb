# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

#time complexity O(n^2), space complexity O(1)

def matrix_check_sum(matrix)
  rows = matrix.size
  columns = matrix[0].size

  i = 0
  until i == rows

    rowsum = 0
    col = 0
    row = i
    until col == columns  # sum row
      rowsum += matrix[row][col]
      col += 1
    end

    colsum = 0
    row = 0
    col = i
    until row == rows  # sum column
      colsum += matrix[row][col]
      row += 1
    end

    return false if rowsum != colsum

    i += 1

  end

return true
end
