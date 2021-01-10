#extension = birthday work 
#what day of the week were you born on?
#obtain user input for their birthday
puts "\nWhat day of the month were you born on? "
day = gets.to_i
puts "\nWhat month of the year were you born in? "
month = gets.to_i
puts "\nWhat is your birthday year? "
year = gets.to_i
#print the users birthday
puts "\nYour birthday is #{day}, #{month}, #{year}."
#If M had been a 1 or 2, subtract 1 from Y and add 12 to M.
if month <=2
  year = (year - 1)
  month = (month + 12)
end
#YF is made from the first two digits of Year and YL is made from the last two digits of Year.I've divided Year by 100 to get YF and then used Modulo to find the remainder when dividing by 100 to get YL 
YF = year/100
YL = year%100
#Work out the sum of all the integer parts of 
#2.6*M − 5.39 + YF/4 + YL/4 
# add D and YL into that total
# and then subtract 2 * YF
sum1 = (2.6 * month) - 5.39 + (YF/4) + (YL/4) + day + YL - (2*YF)
sum2 = sum1.floor
#divide the remainder by 7 to find the remainder using modulo
remainder = sum2%7
#create an If statement to determine the day of the week from the remainder of the SUM%7
if (remainder == 0)
  puts "You were born on a Sunday"
elsif (remainder == 1)
  puts "You were born on a Monday"
elsif (remainder == 2)
  puts "You were born on a Tuesday"
elsif (remainder == 3)
  puts "You were born on a Wednesday"
elsif (remainder == 4)
  puts "You were born on a Thursday"
elsif (remainder == 5)
  puts "You were born on a Friday"
elsif (remainder == 6)
  puts "You were born on a Saturday"
end
