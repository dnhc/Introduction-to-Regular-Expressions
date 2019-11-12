# Write a regex that matches any four digit hexadecimal number that is both
# preceded and followed by whitespace. Note that 0x1234 is not a hexadecimal
# number in this exercise: there is no space before the number 1234.

# Hello 4567 bye CDEF - cdef
# 0x1234 0x5678 0xABCD
# 1F8A done
# There should be four matches (2 on Scriptular)

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

regex = /\s\h\h\h\h\s/

test = 'Hello 4567 bye CDEF - cdef
0x1234 0x5678 0xABCD
1F8A done'

p number_of_matches(test, regex)
