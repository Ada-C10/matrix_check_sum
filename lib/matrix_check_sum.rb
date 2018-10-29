# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)

  length = matrix.length

  row_sums = {}
  col_sums = {}

  length.times do |row|
    matrix[row].each_with_index do |num, index|
      if row_sums.include?(index)
        row_sums[index] += num
      else
        row_sums[index] = num
      end

      if col_sums.include?(row)
        col_sums[row] += num
      else
        col_sums[row] = num
      end

    end

  end

  row_sums.each do |row, sum|
    if col_sums[row] != sum
      return false
    end
  end

  return true

end
