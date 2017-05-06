# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :files

  def initialize(files)
    @files = files
  end

  def parse
    result = []
    split = @files.split(/[, ]/)
    (split.map {|e| e.strip }).each do |e|
      if e.length > 2
        result << e
      end
     end
    result.uniq
  end
end
