p Dir.pwd
# p Dir.methods
p Dir.ancestors
Dir.glob('*.rb').each_with_index do |file, i|
  # p comm = ["file", file, "file#{i}_#{file}"].join(" ")
  # p comm = [file,file.match(/(.+)(.md)/)]
#   file.match(/(.+)(.md)/) == nil do |e|
#     p[file,$1]
# =begin
#     p nil
#   else
#     puts file
# =end
#   end
#   # system(comm)
    # .md fileのみをterminalに出力
    file.match(/(.+)(README.md)/) do |e|
      p [($1+file).downcase, $1]
      p [($1+file).gsub, $1]
    end
end