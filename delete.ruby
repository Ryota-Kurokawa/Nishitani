

def delete_files_matching_pattern(directory, pattern)
  Dir.foreach(directory) do |filename|
    filepath = File.join(directory, filename)
    if File.file?(filepath) && filename =~ pattern
      File.delete(filepath)
      puts "Deleted file: #{filepath}"
    end
  end
end

# 使用例
directory = '/Users/kurokawaryouta/Desktop/個人/学業/3回生春学期/Nishitani_lab'
pattern = /\.md$/

delete_files_matching_pattern(directory, pattern)
