TRANSITIONS = {

  # :head_search => {
  #   :block_search => ['# ', :block_search]

  # },
  # :block_search => {
  #   :head_search => ['```', :head_search]
  # }
  :head_search => [:block_search, '# '],
  :block_search => [:head_search, '```']
}

# state = :head_search
state, key = TRANSITIONS[:head_search]

file = "temp.md"
File.readlines(0..11).each do |line|
  p [state, key, line]
  state, key = TRANSITIONS[state] if line.match(key)
  # state = :head_search if line.match(/^```/)
end