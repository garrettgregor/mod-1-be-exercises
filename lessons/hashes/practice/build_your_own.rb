# Your turn to create a hash. Make sure to use symbols for the keys.

# Create your hash here

# Steps
# 1. Create a hash called new_band.
new_band = {
  vocalist:     ["Vocalist"],
  bassist:      "Bassist",
  guitarists:   ["Guitarist1", "Guitarist2"],
  producer:     "MGM"
}
# 2. Add a bassist to your new_band hash.
new_band[:bassist] = "Flea"
# 3. Find the name of your bassist by accessing the :bassist key in the new_band hash.
new_band[:bassist]
# 4. Find the value attached to :vocalist in your hash.
new_band[:vocalist]
# 5. Add a vocalist to your hash.
new_band[:vocalist] << "Vocalist2"
# 6. Add a drummer to your hash.
new_band[:drummer] = "Drummer"
# 7. Get all the keys in your Hash. What kind of object does that method return?
new_band.keys
# 8. Get all the values in your Hash. What kind of object does that method return?
new_band.values
# 9. Assign a new value to the :vocalist key of your hash.
new_band[:vocalist] = "Me"
# 10. How has keys changed after the last step? How has values changed?
puts new_band.keys
puts new_band.values

