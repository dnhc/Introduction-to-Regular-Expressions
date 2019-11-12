# Write a regex that matches the word cat when it occurs at the end of a line.

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

regex = /\bcat$/

test1 = 'The lazy cat sleeps'
test2 = 'The number 623 is not a cat'
test3 = 'The Alaskan drives a snowcat'
test4 = 'There should be one match.'

p number_of_matches(test1, regex)
p number_of_matches(test2, regex)
p number_of_matches(test3, regex)
p number_of_matches(test4, regex)
