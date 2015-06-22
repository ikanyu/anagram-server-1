
require 'csv'
# require '../app/models/word'
# filename = File.dirname(__FILE__) + "../words"
# p filename
csv = CSV.new(File.open("words.csv"), :headers => false)
# p csv
csv.each do |row|
  # p row
      hash = {}
      # # row.each do |field, value|
      # #   p field
      # #   p value
      #   # TODO: begin
      hash[:word] = row[0]
        # raise NotImplementedError, "TODO: figure out what to do with this row and do it!"
        # TODO: end
      # end
      Word.create(hash)
      # p Word
      p hash
    end
