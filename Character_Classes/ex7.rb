# Are /(ABC|abc)/ and /[Aa][Bb][Cc]/ equivalent regex? If not, how do they
# differ? Can you provide an example of a string that would match one of these
# regex, but not the other?

# The two are not equivalent, in the first example AbC would fail, as the second
# gives us many more permutations.
