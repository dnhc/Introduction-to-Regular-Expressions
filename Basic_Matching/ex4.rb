# Write a regex that matches any of the following fruits: banana, orange, apple,
# strawberry. The fruits may appear in other words. Test it with these strings:

# banana
# orange
# pineapples
# strawberry
# raspberry
# grappler

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

test_string1 = 'banana'
test_string2 = 'orange'
test_string3 = 'pineapples'
test_string4 = 'strawberry'
test_string5 = 'raspberry'
test_string6 = 'grappler'

regex = /(banana|orange|apple|strawberry)/

puts number_of_matches(test_string1, regex)
puts number_of_matches(test_string2, regex)
puts number_of_matches(test_string3, regex)
puts number_of_matches(test_string4, regex)
puts number_of_matches(test_string5, regex)
puts number_of_matches(test_string6, regex)
