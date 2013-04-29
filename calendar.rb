
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

# def leap_year
# 	if year is divisible by 400 then
#    is_leap_year
# elsif year is divisible by 100 then
#    not_leap_year
# elsif year is divisible by 4 then
#    is_leap_year
# else
#    not_leap_year
#  end

# puts `cal #{month} #{year}`

# def print_header (month, year)
# 	
# 	# year = [some variable I will make later]
# end

# # def next_list_item=(linked_list_item)
# #     if self === linked_list_item
# #       raise ArgumentError
# #     end
# #     @next_list_item = linked_list_item
# #   end
 end
