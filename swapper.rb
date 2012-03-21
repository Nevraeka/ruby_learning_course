module FileSwapper
  class Swapper
    
    def initialize(*args)
      exit_if_invalid(args)
      @file_list = []
      read_files(args)
      write_files
    end
    
    def read_files(files)
      files.each do | f |
        @file_list << { f => File.open(f, "r").read }
      end
    end

    def write_files
      rev_files = @file_list.reverse
      @file_list.each_with_index do | f, i |
        File.open(f.keys[0], "w"){ |file| 
	  file << rev_files[i].values[0] 
	  puts "writing file #{f.keys[0]} with content from #{rev_files[i].keys[0]}"
	}
      end
    end
   
    def exit_if_invalid(args)
      if !files_exist?(args)
        puts "One or more of the files you stated does not exist"
	return
      end
    end

    def files_exist?(files)
      arr = []
      files.each do | file_path |
        arr << File.exists?(file_path)
      end
      !(arr.include? false)
    end

  end
end


puts "Enter the first file you wish to swap"
first = gets.chomp
puts "Enter the second file you wish to swap"
second = gets.chomp

FileSwapper::Swapper.new(first,second)
