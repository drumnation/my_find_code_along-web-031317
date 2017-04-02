require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 1
    # 1. iterate through collection
    # 2. yield whatever is passed in as the argument to the block
    # 3. if the block returns true, return the argument we passed into yield
    # 4. if true exit the loop and return element
    # 5. if false continue to the next element in the array
  end
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }
