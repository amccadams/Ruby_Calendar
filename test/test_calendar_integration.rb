require 'test/unit'
require './calendar'

class CalendarTest < Test::Unit::TestCase

   # def test_1_2012
   #   assert_equal(`cal 2 2012`,`ruby calendar.rb 2 2012`)
   # end


def test_01_month_name_string
 	cal = Calendar.new(9, 2012)
	assert_equal("September",cal.month_name)
end

def test_02_month_header_string
 	cal = Calendar.new(11, 1997)
	assert_equal("November 1997",cal.month_header)
end

def test_03_days_of_week
	cal = Calendar.new(2, 2012)
	assert_equal("Su Mo Tu We Th Fr Sa",cal.days_of_week)
end

def test_04_leapyear
	cal = Calendar.new(2012)
	# assert_equal("2012",cal.leap_year)
end
# def test_2_days_of_week
# 	Wednesday
# end

# def test_3_years
# end

# def test_4_leap_years
# end

# def test_5_first_days_of_month
# end

# def test_6_days_in_month
# end



   # def test_print_header 
   #   header = Calendar.new("January")
   #   assert_equal("January")
   # end


end