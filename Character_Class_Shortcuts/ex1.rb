# Write a regex that matches any sequence of three characters delimited by
# whitespace characters. Test it with these strings:

# reds and blues
# the lazy cat sleeps

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

regex = /\s...\s/

test = 'reds and blues
the lazy cat sleeps'

p number_of_matches(test, regex)
