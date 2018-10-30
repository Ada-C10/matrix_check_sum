# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.


def matrix_check_sum(matrix)
  # raise NotImplementedError
  row_count = matrix.length
  row_sums = []
  col_sums = []

  #sum up each row
  row = 0 #col index
  col = 0 #row index
  row_count.times do #for each row
    sum = 0 #sum of each row
    row_count.times do #for each column
      sum += matrix[col][row] #for the each index of the row
      row += 1 #increase row index by one
    end
    row_sums << sum #shovel sum to row_sums array
    row = 0
    col += 1
  end

  col = 0 #reset col to 0

  row_count.times do #for each row
    sum = 0 #sum of each row
    row_count.times do #for each column
      sum += matrix[col][row] #for the each index of the row
      col += 1 #increase col index by one
    end
    col_sums << sum #shovel sum to col_sums array
    col = 0 #revert col to 0
    row += 1
  end

  return col_sums == row_sums
  #sum up

end
