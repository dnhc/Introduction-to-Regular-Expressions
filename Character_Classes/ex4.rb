# Write a regex that matches any letter except x or X. Test it with these
# strings:

# 0x1234
# Too many XXXXXXXXXXxxxxxxXXXXXXXXXXXX to count.
# The quick brown fox jumps over the lazy dog
# THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG

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

regex = /[A-WYZa-wyz]/

test1 = 'Too many XXXXXXXXXXxxxxxxXXXXXXXXXXXX to count.'
test2 = 'The quick brown fox jumps over the lazy dog'
test3 = 'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG'
test4 = '0x1234'

p number_of_matches(test1, regex)
p number_of_matches(test2, regex)
p number_of_matches(test3, regex)
p number_of_matches(test4, regex)
