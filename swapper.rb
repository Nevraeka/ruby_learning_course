# require 'tempfile'

module File
  class Swapper
    def add_temp_file(name, file)
      @#{name} = File.open(file, "r").read
    end
    def remove_temp_file(name)
      @#{name} = nil
    end
    def files_exist?(*files)
      arr = []
      files.each do | file_path |
        arr << File.exists?(file_path)
      end
      !(arr.include? false)
    end
  end
end
