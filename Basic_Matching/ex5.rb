# Write a regex that matches a comma or space.
# Test your regex with these strings:
# This line has spaces
# This,line,has,commas,
# No-spaces-or-commas

def match_in_string?(string, regex)
  string.match(regex).class == MatchData
end

def number_of_matches(string, regex)
  dup_string = string.dup
  matches = []
  while match_in_string?(dup_string, regex)
    matches.push('match')
    dup_string.sub!(regex, '')
  end
  matches.length
end

test_string1 = 'This line has spaces'
test_string2 = 'This,line,has,commas,'
test_string3 = 'No-spaces-or-commas'

regex = /( |,)/

puts number_of_matches(test_string1, regex)
puts number_of_matches(test_string2, regex)
puts number_of_matches(test_string3, regex)
