# Write a method that changes every arithmetic operator (+, -, *, /) to a '?'
# and returns the resulting string. Don't modify the original string.

def match_in_string?(string, regex)
  string.match(regex).class == MatchData
end

def sub_all_matches_to_?(string, regex)
  dup_string = string.dup
  return dup_string.gsub!(regex, '?') if match_in_string?(dup_string, regex)
  string
end

regex = %r{[+\-*\/]}

p sub_all_matches_to_?('(4 * 3 + 2) / 7 - 1 = 1', regex)
