# Write a regex that matches an entire line of text consists of exactly 3 words
# as follows:

# The first word is A or The.
# There is a single space between the first and second words.
# The second word is any 4-letter word.
# There is a single space between the second and third words.
# The third word -- the last word -- is either dog or cat.

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

regex = /\A(A|The) [A-Za-z][A-Za-z][A-Za-z][A-Za-z] (dog|cat)/

test1 = 'A grey cat'
test2 = 'The lazy dog'
test3 = 'The white cat'
test4 = 'A loud dog'
test5 = 'Go away dog'
test6 = 'The ugly rat'
test7 = 'The lazy, loud dog'

p number_of_matches(test1, regex)
p number_of_matches(test2, regex)
p number_of_matches(test3, regex)
p number_of_matches(test4, regex)
p number_of_matches(test5, regex)
p number_of_matches(test6, regex)
p number_of_matches(test7, regex)
