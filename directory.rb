p Dir.pwd
# p Dir.methods
p Dir.ancestors
Dir.glob('*.md').each_with_index do |file, i|
  p comm = ["file", file, "file#{i}_#{file}"].join(" ")
  p [file,file.match(/(.+)(.md)/)]
file.match(/(.+)(README.md)/) do |e|
      p [($1+file).downcase, $1]
      p [($1+file).gsub, $1]
  end
  system(comm)
end