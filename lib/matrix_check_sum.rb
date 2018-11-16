# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  rows = matrix.length

  row_sums = []
  column_sums = []

  rows.times do |i|
    sum = 0

    matrix[i].each do |num|
      sum += num
    end

    row_sums << sum

    sum = 0

    rows.times do |j|
      sum += matrix[j][i]
    end

    column_sums << sum
  end

  rows.times do |i|
    return false unless row_sums[i] == column_sums[i]
  end

  return true
end
