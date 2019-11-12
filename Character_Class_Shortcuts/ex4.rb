# Write a regex that matches any sequence of three letters. Test it with these
# strings:

# The red d0g chases the b1ack cat.
# a_b c_d
# There should be seven matches.

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

regex = /[a-z][a-z][a-z]/i

test = 'The red d0g chases the b1ack cat.
a_b c_d'

p number_of_matches(test, regex)
