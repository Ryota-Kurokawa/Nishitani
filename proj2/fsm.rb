file = 'README.org'

TRANSITIONS = {
  normal_search: [:normal_search, :val_search, '\n'],
  head_search: [:val_search, :normal_search, '**'],
  val_search: [:head_search, :normal_search, '- '],
}

TRANSITIONS = {
  '**' => :head_search,
  '- ' => :val_search,
}

key = '**'

lines = File.readlines(file)
lines[12..24].each do |line|
  # if line[0..1] == key
  #   p line
  #   state1, state2, key = TRANSITIONS[state1]
  #   p [state1, state2, key]
  # end
  # if line[0..1] == TRANSITIONS[:head_search][2]
  action = TRANSITIONS[line[0..1]]
  case action
  when :head_search
    p line
  when :val_search
    p line
  else
  end
  # puts line if line.match(/\*/)
  # puts line if line.match(/-/)
end
