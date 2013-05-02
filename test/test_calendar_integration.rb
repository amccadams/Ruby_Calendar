require 'test/unit'
require './calendar'

class CalendarTest < Test::Unit::TestCase

def test_0_integration_tests_2_2013_non_leapyear
  assert_equal(`cal 2 2013`,`ruby calendar.rb 2 2013`)
 end

def test_1_integration_tests_2012
  assert_equal(`cal 2 2012`,`ruby calendar.rb 2 2012`)
end

def test_02_month_name_string
 	cal = Calendar.new(9, 2012)
	assert_equal("September",cal.month_name)
end

def test_03_month_header_string
 	cal = Calendar.new(11, 1997)
	assert_equal("November 1997",cal.month_header)
end

def test_04_days_of_week
	cal = Calendar.new(2, 2012)
	assert_equal("Su Mo Tu We Th Fr Sa",cal.days_of_week)
end

def test_05_leapyear_divisible_by_400
	cal = Calendar.new(2, 2000)
	assert_equal(true,cal.leap_year?)
end

def test_06_leapyear_divisible_by_4
	cal = Calendar.new(2, 2012)
	assert_equal(true,cal.leap_year?)
end

def test_07_not_leapyear
	cal = Calendar.new(2, 2013)
	assert_equal(false,cal.leap_year?)
end

def test_08_not_leapyear_by_100
	cal = Calendar.new(2, 1000)
	assert_equal(false,cal.leap_year?)
end

def test_09_first_day_of_month
	cal=Calendar.new(4,2013)
	assert_equal(2, cal.first_day_of_month)
end

def test_10_first_day_of_month_sunday_nonleap
	cal=Calendar.new(9,2013)
	assert_equal(1, cal.first_day_of_month)
end
def test_11_first_day_of_month_leap
	cal=Calendar.new(7,2012)
	assert_equal(1, cal.first_day_of_month)
end

def test_12_days_of_month_31_days
cal = Calendar.new(1, 2013)
assert_equal(31, cal.days_in_month)
end

def test_13_days_of_month_30_days
cal = Calendar.new(4, 2013)
assert_equal(30, cal.days_in_month)
end

def test_14_days_of_month_Feb_leapyear
cal = Calendar.new(2, 2012)
assert_equal(29, cal.days_in_month)
end

def test_15_days_of_month_Feb_non_leapyear
cal = Calendar.new(2, 2013)
assert_equal(28, cal.days_in_month)
end

# def test_16_year
# 	cal = Calendar.new(9, 1976)
# 	assert_equal(1976, cal.year_number)
# end
# def test_16_array_day_output
# 	cal = Calendar.new(9, 1976)
# 	assert_equal 
# end

# 	assert_equal(<<-CALENDAR
#    September 1976
# Su Mo Tu We Th Fr Sa
#           1  2  3  4
#  5  6  7  8  9 10 11
# 12 13 14 15 16 17 18
# 19 20 21 22 23 24 25
# 26 27 28 29 30
# CALENDAR, cal.print_calendar)
# end


end