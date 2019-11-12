# Write a regex that matches any word that begins with b and ends with an e, and
# has any number of letters in-between. You may limit your regex to lowercase
# letters.

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

regex = /\bb[a-z]*e\b/

test1 = 'To be or not to be'
test2 = 'Be a busy bee'
test3 = 'I brake for animals.'

p number_of_matches(test1, regex)
p number_of_matches(test2, regex)
p number_of_matches(test3, regex)
