startyear = gets.chomp
endyear = gets.chomp
startyear = startyear.to_i
endyear = endyear.to_i
while startyear <= endyear
  if (startyear % 4 == 0)
    if (startyear % 100 == 0 and startyear % 400 == 0)
      puts startyear
    elsif (startyear % 100 == 0 and startyear % 400 != 0)
      var = ""
    else
      puts startyear
    end
  end
    startyear += 1
end
