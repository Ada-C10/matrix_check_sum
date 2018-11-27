# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  return false if (matrix.length) != (matrix[0].length)
  (matrix.length).times do |i|
    rows = 0
    columns = 0
    (matrix[0].length).times do |j|
      rows += matrix[i][j]
      columns += matrix[j][i]
    end
    if rows != columns
      return false
    end
end
return true
end

#time is O(n * m) where n and m are rows and columns
#space is O(1)
