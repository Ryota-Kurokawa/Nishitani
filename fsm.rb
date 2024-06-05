require 'pp'
def write_file(cont)
  p file_name  = cont[0][2..-2]+".md"
  File.write(file_name, cont.join(''))
end
hash_table = {
  :head_search => ['# ', :block_search],
  :block_search => ['```', :head_search]
}
file = 'temp.md'
keys =['# ','```']
state= :head_search
cont = []
File.readlines(file)[0..11].each do |line|
  line[0..1] == hash_table[state][0] ? line[0..1] = '' : line
    case state
    when :head_search
        # p [state,line.include?(keys[0]),line]
        if line.include?(keys[0])
            if cont[0]
                write_file(cont)
            end
            cont = [line]
            state = :block_search
        else
            cont << line
        end
    when :block_search
        # p [state,line.include?(keys[1]),line]
        if line.include?(keys[1])
            cont << line
            state = :head_search
        end
    end

end
write_file(cont)