# Write a regex that matches uppercase or lowercase Ks or a lowercase s. Test it
# with these strings:

# Kitchen Kaboodle
# Reds and blues
# kitchen Servers
# There should be six matches.

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

regex = /[Kks]/

puts number_of_matches('Kitchen Kaboodle', regex)
puts number_of_matches('Reds and blues', regex)
puts number_of_matches('kitchen Servers', regex)
