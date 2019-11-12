# Write a method that changes the first occurrence of the word apple, blueberry,
# or cherry in a string to danish.

def match_in_string?(string, regex)
  string.match(regex).class == MatchData
end

def sub_first_match_to_danish(string, regex)
  dup_string = string.dup
  return dup_string.sub!(regex, 'danish') if match_in_string?(dup_string, regex)
  string
end

regex = /\b(apple|blueberry|cherry)\b/

p sub_first_match_to_danish('An apple a day keeps the doctor away', regex)

p sub_first_match_to_danish('My favorite is blueberry pie', regex)

p sub_first_match_to_danish('The cherry of my eye', regex)

p sub_first_match_to_danish('apple. cherry. blueberry.', regex)

p sub_first_match_to_danish('I love pineapple', regex)
