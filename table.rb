chapter = ["Chapter 1: Numbers", "Chapter 2: Letters", "Chapter 3: Variables"]
page = ["page 1", "page 72", "page 118"]
headline = "Table of Contents"
line = 50
count = 0
puts headline.center line
while count < chapter.length
  puts chapter[count].ljust(line/2) + page[count].rjust(line/2)
  count += 1
end

# connecting values with a hash (key & value) instead of two arrays would be more effective, but this works
