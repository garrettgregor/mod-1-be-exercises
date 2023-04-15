new_tv = {
  "screen size" => 50,
  "price" => 300,
  "brand" => "Samsung"
}

# Remember in Ruby, symbols are basically Strings that can’t change.
# You can recognize a symbol because it starts with a colon :.
# All of the following are symbols:
# :name
# :symbols_can_have_underscores
# :"symbols can be in quotes"

# Lets change the hash above to use symbols instead of strings.
puts new_tv
new_tv.transform_keys! do |key|
  key.to_sym
end
puts new_tv
# Syntax symbol with hash rocket:
# create hash here
new_tv = {
  :"screen size" => 50,
  :price => 300,
  :brand => "Samsung"
}
puts new_tv

# Syntax symbol without hash rocket:
# create hash here
new_tv = {
  "screen size": 50,
  price: 300,
  brand: "Samsung"
}

puts new_tv