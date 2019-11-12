# Write a method that changes the first arithmetic operator (+, -, *, /) in a
# string to a '?' and returns the resulting string. Don't modify the original
# string.

def match_in_string?(string, regex)
  string.match(regex).class == MatchData
end

def sub_first_match_to_?(string, regex)
  dup_string = string.dup
  return dup_string.sub!(regex, '?') if match_in_string?(dup_string, regex)
  string
end

regex = %r{[+\-*\/]}

p sub_first_match_to_?('(4 * 3 + 2) / 7 - 1 = 1', regex)
