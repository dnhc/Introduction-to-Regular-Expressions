# Base 20 digits include the decimal digits 0 through 9, and the letters A
# through J in upper or lowercase. Write a regex that matches base 20 digits.
# Test it with these strings:

# 0xDEADBEEF
# 1234.5678
# Jamaica
# plow ahead
# There should be 28 matches.

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

regex = /[0-9a-j]/i

p number_of_matches('0xDEADBEEF', regex)
p number_of_matches('1234.5678', regex)
p number_of_matches('Jamaica', regex)
p number_of_matches('plow ahead', regex)
