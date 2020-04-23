require "pry" 

def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  new_array = []
  outer_index = 0
  
  while outer_index < src.length do
    inner_index = 0
    min_num = 100
    while inner_index < src[outer_index].length do
    
      if src[outer_index][inner_index] < min_num
        min_num = src[outer_index][inner_index]
      end
      inner_index += 1
    end
    
    new_array << min_num
    outer_index += 1
  end
  new_array
end