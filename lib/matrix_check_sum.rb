# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  x_val = 0
  y_val = 0
  a = 0
  b = 0

  while a <= matrix.length - 1 do

    # puts "in sub array #{matrix[a]}"

    while b <= matrix[0].length - 1 do
      # puts "adding #{matrix[a][b]} (#{a}#{b}) from #{matrix[a]}to #{x_val}"
      # puts "adding #{matrix[b][a]} (#{b}#{a}) from #{matrix[b]} to #{y_val}"
      x_val += matrix[a][b]
      y_val += matrix[b][a]
      b += 1
      # puts "x is now #{x_val}"
      # puts " y is now #{y_val}"
    end

    if x_val != y_val
      return false
    else
      x_val = 0
      y_val = 0
      b = 0
      a += 1
    end
  end
  return true
end
