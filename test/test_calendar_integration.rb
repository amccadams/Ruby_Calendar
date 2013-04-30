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

def test_04_leapyear_divisible_by_400
	cal = Calendar.new(2, 2000)
	assert_equal(true,cal.leap_year?)
end

def test_05_leapyear_divisible_by_4
	cal = Calendar.new(2, 2012)
	assert_equal(true,cal.leap_year?)
end

def test_06_not_leapyear
	cal = Calendar.new(2, 2013)
	assert_equal(false,cal.leap_year?)
end

def test_07_not_leapyear_by_100
	cal = Calendar.new(2, 1000)
	assert_equal(false,cal.leap_year?)
end

def test_08_first_day_of_month
	cal=Calendar.new(4,2013)
	assert_equal(2, cal.first_day_of_month)
end










 


end