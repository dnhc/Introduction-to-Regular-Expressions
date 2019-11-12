# Write a method that returns all of the fields in a haphazardly formatted
# string. A variety of spaces, tabs, and commas separate the fields, with
# possibly multiple occurrences of each delimiter.

def regex_split_string(string, regex)
  string.split(regex)
end

regex = /[ \t,]+/

p regex_split_string('Pete,201,Student', regex)

p regex_split_string('Pete \t 201    ,  TA', regex)

p regex_split_string('Pete \t 201', regex)
