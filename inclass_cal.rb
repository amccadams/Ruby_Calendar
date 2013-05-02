MONTHS = %w { Januray Februry March April May June July August September October November December}

unless month and year
raise ArgumentError
end

unless month.to_i > o and year.to_i > 0
raise ArgumentError
end


result "#{MONTHS [month.to_i -1]} #{year}".center(20).rstrip
puts "Su Mo Tu We Th Fr Sa"
(1..31)

print "#{i} "
if i % 7 ==0
	print "\n"
end
end
print "\n"
end

month =ARGV[0]
year =ARGV[1]
print_calendar (month, year)

