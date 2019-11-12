# Write a method that returns true if its argument looks like a URL, false if it
# does not.

def match_in_string?(string, regex)
  string.match(regex).class == MatchData
end

regex = %r{\Ahttps?:\/\/\S*\z}

p match_in_string?('http://launchschool.com', regex)

p match_in_string?('https://example.com', regex)

p match_in_string?('https://example.com hello', regex)

p match_in_string?('   https://example.com', regex)
