# Write a regex that matches lines of text that contain at least 3, but no more
# than 6, consecutive comma separated numbers. In this exercise, you can assume
# that the first number on each line is not preceded by a comma, and the last
# number is not followed by a comma.

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

regex = /\A(\d+,\d+){2,5}\z/

test1 = '123,456,789,123,345'
test2 = '123,456,,789,123'
test3 = '23,56,7'
test4 = '13,45,78,23,45,34'
test5 = '13,45,78,23,45,34,56'

p number_of_matches(test1, regex)
p number_of_matches(test2, regex)
p number_of_matches(test3, regex)
p number_of_matches(test4, regex)
p number_of_matches(test5, regex)
