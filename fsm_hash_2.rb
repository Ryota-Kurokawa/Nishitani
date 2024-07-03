TRANSITIONS = {
  :head_search => [:block_search, '# '],
  :block_search => [:head_search, '``']
}

state, key = TRANSITIONS[:head_search]

file = "temp.md"
File.readlines(file)[0..11].each do |line|
  p [state, key, line]
  state, key = TRANSITIONS[state] if line[0..1] == key
end++