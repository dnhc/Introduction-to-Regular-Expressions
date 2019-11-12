# Write a regex that matches any three-letter word; a word is any string
# comprised entirely of letters.

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

regex = /\b[a-z][a-z][a-z]\b/i

test1 = 'reds and blues'
test2 = 'The lazy cat sleeps.'
test3 = 'The number 623 is not a word. Or is it?'

p number_of_matches(test1, regex)
p number_of_matches(test2, regex)
p number_of_matches(test3, regex)
