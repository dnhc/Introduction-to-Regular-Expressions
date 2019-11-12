# Write a regex that matches an uppercase K.
# Test it with these strings:
# Kx
# BlacK
# kelly

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
  puts string
  matches.length
end

test_string1 = 'Kx'
test_string2 = 'BlacK'
test_string3 = 'kelly'

regex = /K/

puts number_of_matches(test_string1, regex)
puts number_of_matches(test_string2, regex)
puts number_of_matches(test_string3, regex)
