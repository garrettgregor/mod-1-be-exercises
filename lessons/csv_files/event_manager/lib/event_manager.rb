# ./lib/event_manager.rb
require "csv"
puts "EventManager initialized."

def clean_zip(zipcode)
  if zipcode.nil?
    "00000"
  elsif zipcode.length == 5
    zipcode
  elsif zipcode.length > 5
    zipcode[0..4]
  elsif zipcode.length < 5
    zipcode.rjust(5, "0")
  end
end

contents = CSV.open("data/event_attendees.csv", headers: true, header_converters: :symbol)

contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  
  formatted_zip = clean_zip(zipcode)

  puts "#{name} #{formatted_zip}"
end
