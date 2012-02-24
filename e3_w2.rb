def leap_year?(year)
  year % 4 == 0 && ((year % 100 == 0) || (year % 4 == 0)) # source: http://en.wikipedia.org/wiki/Leap_year#Algorithm
end

def minutes_in_days_by_year(year)
  leap_year?(year) ? (60*24*366) : (60*24*365)
end

puts "Enter a year to evalute in minutes"
yr = gets.chomp.to_i

puts "The year \"#{yr}\" has \"#{minutes_in_days_by_year(yr)}\" total minutes and is #{leap_year?(yr) ? '' : 'not '}a leap year"