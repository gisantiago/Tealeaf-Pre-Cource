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

# Exercise 11:


# Exercise 12: Arrya into the empty hash...

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}



contacts['Joe Smith'][:email] = contact_data[0][0] 
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts

# Exercise 13: access Joe's email and Sally's phone number
puts "Joe's email: #{contacts["Joe Smith"][:email]}"
puts " Sally's phone number: #{contacts["Sally Johnson"][:phone]}"

# Exercise 14: loop or iterate over "contacts"
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |fields|
    hash[fields] = contact_data.shift
  end
end
 puts contacts


# Exercise 15: Array Method "delete_if" and String Method "start_with?"...
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

#delete all the words that start with an "s" from the array above

arr.delete_if {|x| x.start_with?("s")}
arr.delete_if {|x| x.start_with?("s", "w")}

puts arr

#Exercise 16: 
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     
a.map! {|words| words.split}.flatten!
p a

#Exercise 17: What will the following program output? "These hashes are not..."
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end


















