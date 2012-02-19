# api

class MultiplicationTable
  
  def initialize (rows_and_cols, header, decorate)
    base_scale(rows_and_cols)
    @header = header.empty? ? "" : header   
    @decorate = decorate.empty? ? false : true
    make_h(rows_and_cols)
    # h_to_tbl
  end

  def base_scale(rows_and_cols)
    unless Integer(rows_and_cols).is_a? Integer
      puts "Program is exiting. Please enter a valid integer for the Scale"
      exit
    end
    @rows_and_cols = rows_and_cols
  end

  def make_h(max)
    @multiplication_table = {}
    add_header
    make_h_rows
  end

  def make_h_rows
    count = 0
    while (count < Integer(@rows_and_cols))
      count += 1    
      @multiplication_table.merge!({"row#{count}" => []})
      update_h(count)
    end
  end
	
  def add_header
    @multiplication_table.merge!({"header" => @header}) unless (@header == "")
  end

  def update_h(count)
    count2 = 0
    row_values = []
    until (count2 == Integer(@rows_and_cols))
      count2 += 1
      @multiplication_table["row#{count}"] = row_values << (count*count2)
    end
  end

  def h_to_tbl
    # return unless @decorate
    longest_num = Math.log10(Integer(@rows_and_cols)).floor + 1 #thanks to victor for this
    multi_table = ""
    multi_table << (@multiplication_table["header"] ? "#{@multiplication_table["header"]}\n" : "")
    multi_table << ("="*((Integer(@rows_and_cols)+1)*longest_num))
    multi_table << "\n"
    @rows_and_cols.each do | key |
      unless key == "header"
       multi_table << (" " + "#{key.join(" ")}" + " \n")
      end
    end
    puts multi_table
  end
 
end

#irb 

puts "Enter the multiplication table scale (number)"
rows_and_cols = gets.chomp

puts "Enter the header for this multiplication table (press enter if none is available)"
header = gets.chomp

puts "is the table going to be decorated (true or false)"
decorate = gets.chomp

m_tbl = MultiplicationTable.new(rows_and_cols, header, decorate)

#wip. doesnt work as expected. moving on to next excercise
