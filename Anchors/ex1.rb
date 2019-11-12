# Write a regex that matches the word The when it occurs at the beginning of a
# line. Test it with these strings:

# The lazy cat sleeps.
# The number 623 is not a word.
# Then, we went to the movies.
# Ah. The bus has arrived.
# There should be two matches.

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

regex = /^The\b/

test1 = 'The lazy cat sleeps.'
test2 = 'The number 623 is not a word.'
test3 = 'Then, we went to the movies.'
test4 = 'Ah. The bus has arrived.'

p number_of_matches(test1, regex)
p number_of_matches(test2, regex)
p number_of_matches(test3, regex)
p number_of_matches(test4, regex)
