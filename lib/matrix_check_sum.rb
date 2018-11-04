# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  # We are assuming all in coming matrices are square.
  # Matrix.length is the number of rows in the matrix.
  # Set index = 0, sum at row 0 and column 0
  # row = matrix[0][0] + matrix [0][1] + matrix[0][2] + matrix[0][3]
  # column = matrix[0][0] + matrix[1][0] + matrix[2][0] + matrix[3][0]
  row_col_index = 0
  row_sum = 0
  column_sum = 0
  while row_col_index < matrix.length do

    # Add row
    # Add column
    index = 0
    while index < matrix.length do
      row_sum += matrix[row_col_index][index]
      column_sum += matrix[index][row_col_index]
      index += 1
    end
    # If the sum row == sum column, iterate row_col_index
    if row_sum == column_sum
      row_col_index += 1
    # else sum row == sum column return false
    else
      return false
    # end
    end
    # return true (iterated through entire matrix with corresponding rows and columns equal to eachother)

  end
  return true
  raise NotImplementedError
end
