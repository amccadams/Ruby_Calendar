require_relative 'calendar'

month = ARGV[0]
year = ARGV[1].to_i

if ARGV.size > 0
  calendar = Calendar.new(month,year)
  puts calendar.format_calendar
end