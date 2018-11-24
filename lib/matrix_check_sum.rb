# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  n = matrix[0].length
  i = 0
  x = 0
  n.times do # O(n)
    # initialize sums to 0
    sum_row = 0
    sum_col = 0
    # sum all el in row & sum all el in column
    while x < n # O(n)
      sum_row += matrix[i][x]
      sum_col += matrix[x][i]
      x += 1
    end
    # compare sums
    if sum_row == sum_col
      # move to next row and col
      i += 1
    else
      # end program if sums !=
      return false
    end
  end
  # default to returning true unless the condition is met
  # where sum of row x and sum of col x are not equal
  return true
end

# Time complexity for this algorithm is O(n^2) since both the inner and outer
# while loops are dependent on the size of the matrix
# Space complexity is constant as the extra variables stored do not increase/decrease
# based on the size of the matrix S = O(1)