# Modify your regex from the previous exercise so the URL can have optional
# leading or trailing whitespace, but is otherwise on a line by itself. To test
# your regex with trailing whitespace, you must add some spaces to the end of
# some lines in your sample text.

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

regex = %r{\A\s*https?:\/\/\S*\s*\z}

test1 = ' http://launchschool.com/'
test2 = 'https://mail.google.com/mail/u/0/#inbox '
test3 = 'htpps://example.com '
test4 = 'Go to http://launchschool.com/'
test5 = 'https://user.example.com/test.cgi?a=p&c=0&t=0&g=0 hello'
test6 = '    http://launchschool.com/'

p number_of_matches(test1, regex)
p number_of_matches(test2, regex)
p number_of_matches(test3, regex)
p number_of_matches(test4, regex)
p number_of_matches(test5, regex)
p number_of_matches(test6, regex)
