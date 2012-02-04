# api

class MultiplicationTable
  
  def initialize (rows_and_cols, header, decorate)
    @rows_and_cols = rows_and_cols
    @header = header
    @decorate = decorate || false
  end
  
  def make_multi_tbl
    @multiplication_table = Hash.new()
  end

  def has_header?(hdr) 
    hdr.present?
  end

  def decorate

  end

  def add_header

  end

  def print_table

  end
 
end

#irb 

puts "Enter the multiplication table scale (number)"
rows_and_cols = gets.chomp

puts "Enter the header for this multiplication table (press enter if none is available)"
header = gets.chomp

puts "is the table going to be decorated (true or false)"
decorate = gets.chomp

