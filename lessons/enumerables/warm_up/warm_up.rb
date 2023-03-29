# 1. Using #each, add to the method below, such that it takes in an array of names, 
# and returns an array of all names upcased.

kardashians = ["kris", "kim", "kourtney", "khloe", "rob"]

def upcase_names(names)
  # your code here
  arr = []
  names.each do |name|
    arr << name.upcase
  end
  arr
end 

p upcase_names(kardashians)

# should return ["KRIS", "KIM", "KOURTNEY", "KHLOE", "ROB"]

# ## .find enumerables
# words = ["pretzel", "capricious", "berry", "unicorn", "bag", "apple", "festering", "pencil", "unicorn"]
#   return_value = words.find do |word|
#     word.length == 7
#   end

# p return_value

# # pretzel





# 2. Using #each, update the method below, such that it takes in an array of names,
# and returns a collection of the names that end in 'ie'

pets = ["Brutus", "Lucky", "Goldie", "Pepper", "Odie"]

def names_ending_in_ie(names)
 # your code here
 arr = []
 names.each do |name|
  # arr << name if name.include?("die")
  # # if name.include?("die")
  # #   arr << name
  # # end
  arr << name if name.end_with?("ie")
  # if name.end_with?("ie")
  #   arr << name
  # end
 end
 arr
end 

p names_ending_in_ie(pets)

# should return an array of ["Goldie", "Odie"]






# 3. Using #each, update the method below, such that it takes in an array of integers,
# and returns the first number that is over 100 when squared. 

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

def first_num_thats_square_is_above_100(nums)

end 

p first_num_thats_square_is_above_100(nums)

# should return the integer 11