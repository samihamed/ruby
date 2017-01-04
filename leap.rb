startyear = gets.chomp
endyear = gets.chomp
startyear = startyear.to_i
endyear = endyear.to_i
while startyear < endyear
  if (startyear % 4 == 0 and startyear % 100 != 0)
    puts startyear
  end
    startyear += 1
end
