def matrix_check_sum(matrix)
  # rows = matrix.length
  #  columns = matrix[0].length
  #  return false if rows != columns
  #
  #  rows.times do |i|
  #    sum_rows = 0
  #    sum_columns = 0

  #    columns.times do |j|
  #      sum_rows += matrix[i][j]
  #      sum_columns += matrix[j][i]
  #    end
  #    if sum_rows != sum_columns
  #      return false
  #    end
  #  end
  #
  #  return true
  min = 0
  num_of_rows = matrix.length
  num_of_columns = matrix[0].length

  return false if num_of_rows != num_of_columns

  i = 0

  while i < matrix.length
    row_sum = 0
    column_sum = 0

    j = 0
    while j < matrix.length

      row_sum += matrix[i][j]
      column_sum += matrix[j][i]
      j += 1

    end
    i += 1
    return false if row_sum != column_sum
  end
  return true
end

# row_sum += matrix[0][0] + matrix[0][1] + matrix[0][2] + matrix[0][3]
# column_sum += matrix[0][0] + matrix[1][0] + matrix[2][0] + matrix[3][0]

# row_sum += matrix[1][0] + matrix[1][1] + matrix[1][2] + matrix[1][3]
# column_sum += matrix[0][1] + matrix[1][1] + matrix[2][1] + matrix[3][1]
