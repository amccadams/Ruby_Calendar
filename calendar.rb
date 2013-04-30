
class Calendar
# month =ARGV[0]
# year =ARGV[1]

attr_reader :month, :year

def initialize (month, year)
   @month = month
   @year = year
end

def month_name
	month_names = [
		"January",
		"February",
		"March",
		"April",
		"May",
		"June",
		"July",
		"August",
		"September",
		"October",
		"November",
		"December"
	]

	month_names[month.to_i-1]
end

def month_header
	"#{month_name} #{year}"
end

def days_of_week
	day_names = 
		"Su Mo Tu We Th Fr Sa"
	end


def leap_year?
	if year % 400 == 0
  true
elsif year % 100 == 0
   false
elsif year % 4 == 0
   true
else
  false
 end
end




def first_day_of_month
	converted_month_values = [14,15,4, 5, 6, 7, 8, 9, 10, 11, 12,13]
	converted_to_user_inputs = converted_month_values[month.to_i-1]
	if converted_to_user_inputs == 14 || converted_to_user_inputs == 15 
		convert_year = year.to_i-1
	else 
		convert_year = year.to_i
	end
# return 0/sat, 1/sun, 2/mon.... 6/fri
	start_day = (1 + ((converted_to_user_inputs*26) / 10) +  convert_year +(convert_year / 4) + (6 *(convert_year/100)) + (convert_year / 400) )%7


end



 end
