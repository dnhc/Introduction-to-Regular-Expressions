# Test the pattern /\s...\s/ from the previous exercise against this text
# (be sure to delete the previous text first):

# Doc in a big red box.
# Hup! 2 3 4
# Observe that one of the three-letter words in this text match the pattern; it
# also matches 2 3. Why is it that this pattern doesn't include the three-letter
# words Doc, red, box, or Hup, but it does match 2 3?

# In the text, big and red are the only three-letter words that have whitespace
# characters that surround it. However, because big precedes red, the whitespace
# characters used to count big are accounted for there. It matches 2 3 because
# the special character '.' accounts for spaces.
