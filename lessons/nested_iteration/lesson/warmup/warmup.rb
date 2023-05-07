# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
arr1 = nested_animals.flat_map do |nested_animal|
  nested_animal.map do |animal|
    animal.to_s
  end
end

p arr1

# 2. Return an unnested array of animals with length >= 4

arr2 = nested_animals.flat_map do |nested_animal|
  nested_animal.find_all do |animal|
    animal.length >= 4
  end
end

p arr2

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }

hash = Hash.new(0)

nested_animals.flat_map do |nested_animal|
  nested_animal.map do |animal|
    hash[animal] = animal.length
  end
end

p hash