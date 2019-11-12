# Write a regex that matches any word that contains at least three occurrences
# of the letter i.

# There should be three matches.

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

regex = /\b[a-z]*i[a-z]*i[a-z]*i[a-z]*\b/i

test1 = 'Mississippi'
test2 = 'ziti 0minimize7'
test3 = 'inviting illegal iridium'

p number_of_matches(test1, regex)
p number_of_matches(test2, regex)
p number_of_matches(test3, regex)
