
class Calendar
month =ARGV[0]
year =ARGV[1]

puts `cal #{month} #{year}`

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

def month_padding
	if first_day_of_month == 0
		6
	else 
		first_day_of_month - 1
	end
end

def array_day_output
  output_for_cal = []
	month_padding.times do |i|
	  output_for_cal << nil
	end
	day_array = (1..days_in_month).to_a
	output_for_cal + day_array
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

def first_day_of_month #zellers
	converted_month_values = [14,15,4, 5, 6, 7, 8, 9, 10, 11, 12,13]
	converted_to_user_inputs = converted_month_values[month.to_i-1]
	if converted_to_user_inputs == 14 || converted_to_user_inputs == 15 
		convert_year = year.to_i-1
	else 
		convert_year = year.to_i
	end
# return 0/sat, 1/sun, 2/mon, 3/tue, 4/wed, 5thu, 6/fri
	start_day = (1 + ((converted_to_user_inputs*26) / 10) +  convert_year +(convert_year / 4) + (6 *(convert_year/100)) + (convert_year / 400) )%7
end

def days_in_month
	if month == 2 
		if leap_year?
			29
		else
			return 28
  	end
	elsif month == 1 ||month ==3||month ==5||month ==7||month ==8||month ==10||month ==12
		return 31
	else 
		return 30
	end
end

def print_calendar
	puts month_header
	puts days_of_week
	puts array_day_output

	# = [ 0],[ 1],[ 2],[ 3],[ 4],[ 5], [ 6],\n [ 7], [ 8],[ 9], [ 10], [11], [12], [13] \n [14], [15], [16], [17], [18], [19], [20],\n [21], [22], [23], [24], [25], [26]


end

 end