# Research Methods

# I spent [1] hour on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  answer = source.select do|x|
    x = x.to_s
    x.include? thing_to_find
  end
  p answer
end

def my_hash_finding_method(source, thing_to_find)
   answer = []
   source.select do |k,v|
    if v == thing_to_find
      answer << k
    end
   end
   p answer
end

my_hash_finding_method(my_family_pets_ages, 3)
my_array_finding_method(i_want_pets, "t")
# Identify and describe the Ruby method(s) you implemented.
# - on the array method I used .select and with each string object inside the array, I used .include? .select when used on an array, iterates through the array and selects objects based off of what the block evaluates. the .include? method evaluates a string and issues true or false if the string includes what you specify. In this case, i had to convert all objects into strings so that .include? would work, then whichever strings had a "t" would be evaluated as true, those strings were then selected by .select and stored in the variable answer as an array.
# - on the hash method, I used .select and << (push). the method .select iterates through a hash, and selects whatever you specify in the code block. the << method pushes an object into an array variable. in this case, i've iterated through the hash using select, and whenever a value equals the thing to find, the corresponding key is pushed into the array. It might seem strange to use select(a method that should select the returned objects) and then push to an array within the iteration, but my reason for doing that is that the desired result is for the keys only to be listed in an array. using .select on a hash returns a hash with both the keys and values, so I decided to use push on just the keys to get the desired output. In my research, I couldn't find a hash method that would iterate and return output as just an array, but if anyone finds a method or some way of doing that, I would be interested in hearing about it.
# - as far as researching and figuring out how to use methods properly, I find that a quick read of ruby docs and then experimenting in irb is the best way to go. its simple, fast, and just gives immediate feedback of how to write the syntax and what kind of output you will get.


