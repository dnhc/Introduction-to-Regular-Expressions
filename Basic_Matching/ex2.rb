# Write a regex that matches an uppercase or lowercase H.
# Test it with these strings:
# Henry
# perch
# golf

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

test_string1 = 'Henry'
test_string2 = 'perch'
test_string3 = 'golf'

regex = /h/i

puts number_of_matches(test_string1, regex)
puts number_of_matches(test_string2, regex)
puts number_of_matches(test_string3, regex)
