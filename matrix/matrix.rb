class Matrix
  attr_reader :matrix, :rows, :columns

  def initialize(matrix)
    @matrix  = matrix
    @rows    = extract_rows
    @columns = extract_columns
  end

  private

  def extract_rows
    matrix.split("\n").map do |numbers_group|
      numbers_group.split.map(&:to_i)
    end
  end

  def extract_columns
    rows.transpose
  end
end
