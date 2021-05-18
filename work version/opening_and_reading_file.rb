el = []
File.open("Main_Terms.txt", "r+") do |file|
  el = file.readlines
  puts el[0]

  end
# first, *last= el.split(" - ")
# puts first
# puts last
numb_of_el = 0
