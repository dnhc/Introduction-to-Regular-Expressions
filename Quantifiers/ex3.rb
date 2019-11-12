# Write a regex that matches any line of text that ends with a ?, but does not
# match a line that consists entirely of a single ?. Test it with the strings
# from the previous exercise.

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

regex = /^.+\?$/

test1 = "What's up, doc?"
test2 = 'Say what? No way.'
test3 = '?'
test4 = 'Who? What? Where? When? How?'

p number_of_matches(test1, regex)
p number_of_matches(test2, regex)
p number_of_matches(test3, regex)
p number_of_matches(test4, regex)
