# Exercise 1 - Chapter: More Stuff

def has_lab(string)
  if string =~ /lab/
    puts "#{string}"
  else 
    puts "No Match"
  end
end

has_lab("laboratory")
has_lab("experiment")
has_lab("Pans Labyrinth")
has_lab("elaborate")
has_lab("polar bear")

# Exercise 2 & 4 - Chapter: More Stuff

def execute(&block)
  block.call 
end

execute do
  puts "Hello from inside the execute method!" 
end 

