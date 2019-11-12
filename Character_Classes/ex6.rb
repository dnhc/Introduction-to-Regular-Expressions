# Write a regex that matches any character that is not a letter. Test it with
# these strings:

# 0x1234abcd
# 1,000,000,000s and 1,000,000,000s.
# THE quick BROWN fox JUMPS over THE lazy DOG!
# There should be 45-46 matches.

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

regex = /[^a-z]/i

test1 = '0x1234abcd
1,000,000,000s and 1,000,000,000s.
THE quick BROWN fox JUMPS over THE lazy DOG!'

p number_of_matches(test1, regex)
