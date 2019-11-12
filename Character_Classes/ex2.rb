# Write a regex that matches any of the strings cat, cot, cut, bat, bot, or but,
# regardless of case. Test it with this text:

# My cats, Butterscotch and Pudding, like to
# sleep on my cot with me, but they cut my sleep
# short with acrobatics when breakfast time rolls
# around. I need a robotic cat feeder.
# There should be nine matches.

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

regex_to_test = /[bc][aou]t/i

test_string = 'My cats, Butterscotch and Pudding, like to sleep on my cot'\
              'with me, but they cut my sleep short with acrobatics when'\
              'breakfast time rolls around. I need a robotic cat feeder. There'\
              'should be nine matches.'

p number_of_matches(test_string, regex_to_test)
