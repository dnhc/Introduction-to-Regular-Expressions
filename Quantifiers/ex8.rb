# Write a regex that matches the last word in each line of text. For this
# exercise, assume that words are any sequence of non-whitespace characters.

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

regex = /\S+\z/

test1 = "What's up, doc?"
test2 = 'I tawt I taw a putty tat!'
test3 = "'Thufferin' thuccotath!"
test4 = 'Oh my darling, Clementine!'
test5 = 'Camptown ladies sing this song, doo dah.'

p number_of_matches(test1, regex)
p number_of_matches(test2, regex)
p number_of_matches(test3, regex)
p number_of_matches(test4, regex)
p number_of_matches(test5, regex)
