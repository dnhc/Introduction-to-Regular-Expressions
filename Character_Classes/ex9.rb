# Challenge: write a regex that matches a string that looks like a simple
# negated character class range, e.g., '[^a-z]'. (Your answer should match
# precisely six characters.) Test it with these strings:

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

regex = /\[\^[0-9A-Za-z]-[0-9A-Za-z]\]/

test_string = 'The regex /[^a-z]/i matches any character that is not a letter.
Similarly, /[^0-9]/ matches any non-digit while /[^A-Z]/ matches any character
that is not an uppercase letter. Beware: /[^+-<]/ is at best obscure, and may
even be wrong.'

p number_of_matches(test_string, regex)
