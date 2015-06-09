# Exercise 1: use each method of Array to iterate...

a = [1,2,3,4,5,6,7,8,9,10]

a.each {|n| puts n} 


# Exercise 2: print only values greater than 5

a.each do |n|
    if n > 5
        puts n
    end
end

# Exercise 3: print only odd values into a new array

# a.select do |n|
#     if n.odd?
#         p n
#     end
# end


new_a = a.select { |n| n.odd? }
        p new_a
        
# Exercise 4: append "11" to the end of the original array - Prepend "0" to the beginning 
 
a.push(11)
a.unshift(0)
p a

# Exercise 5: Get rid of "11" and append "3"

a.delete_at(11)
a.push(3)
p a

# Exercise 6: Get of duplicates...

new_arr = a.uniq
    p new_arr

# Exercise 7: major differences between Arrays and Hashes?
    #Arrays are collections of ordered, indexed list of any object
    #Hashes are collections of key value pairs
    
# Exercise 8: create a hash using both syntax style
h1 = {:name => 'Jane', :age => '25 year-old', :city => 'Ponce, PR'}
h2 = { name: 'Jane', age: '25 year-old', city: 'Ponce, PR'}
p h1
    p h2
    
# Exercise 9: get value, add to..., remove,
h = {a:1, b:2, c:3, d:4}

p h[:b]

h.merge!(e:5)
p h

h.select! { |k, v| v > 3.5 }
p h

# Exercise 10: Array of hashed...

hash = { brands: ['Penn', 'Abu Garcia', 'Berkley'] } # Fishing Brands
p hash
    
 arr = [ {brand: 'Penn'}, {brand: 'Abu Garcia'}, {brand: 'Berkley'}]    
 
 p arr

