require "pry-byebug"

example_array = [4,3,78,2,0,2] #From the Odin Project

def bubble_sort(array)
  was_sorted = true
  (array.length - 1).times do
    1.upto(array.length - 1) do |i|
      if array[i - 1] > array[i] 
        array[i - 1], array [i] = array[i], array[i - 1]
        was_sorted = false
      end
    end
    if was_sorted == true
      puts 'The array was already sorted!'
      break
    end
  end
  return array
end

print "Initial array: #{example_array} \nSorted:\n"
print bubble_sort(example_array)
puts
