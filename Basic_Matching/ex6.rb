# Challenge: Write a regex that matches blueberry or blackberry, but write berry
# precisely once. Test it with these strings:

# blueberry
# blackberry
# black berry
# strawberry

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

test_string1 = 'blueberry'
test_string2 = 'blackberry'
test_string3 = 'black berry'
test_string4 = 'strawberry'

regex = /(blue|black)berry/

puts number_of_matches(test_string1, regex)
puts number_of_matches(test_string2, regex)
puts number_of_matches(test_string3, regex)
puts number_of_matches(test_string4, regex)
