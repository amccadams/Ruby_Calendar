
class Calendar
month =ARGV[0]
year =ARGV[1]

# puts `cal #{month} #{year}`

def print_header (month, year)
	month = [
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
	year = [some variable I will make later]
end

def next_list_item=(linked_list_item)
    if self === linked_list_item
      raise ArgumentError
    end
    @next_list_item = linked_list_item
  end
end
