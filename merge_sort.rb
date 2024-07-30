def merge_sort(arr)
  return arr if arr.length < 2

  half_elements = arr.length / 2
  left_sorted = merge_sort(arr.take(half_elements))
  right_sorted = merge_sort(arr.drop(half_elements))

  merge(left_sorted, right_sorted)
end

def merge(left_arr, right_arr)
  return left_arr if right_arr.empty?
  return right_arr if left_arr.empty?

  smallest_num = left_arr.first < right_arr.first ? left_arr.shift : right_arr.shift

  [smallest_num] + merge(left_arr, right_arr)
end

input_1    = [3, 2, 1, 13, 8, 5, 0, 1]
expected_1 = [0, 1, 1, 2, 3, 5, 8, 13]

input_2    = [105, 79, 100, 110]
expected_2 = [79, 100, 105, 110]

input_3    = [5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5]
expected_3 = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]

input_4    = [1]
expected_4 = [1]

input_5    = []
expected_5 = []

puts "Test Case 1"
puts "Input:    #{input_1}"
puts "Expected: #{expected_1}"
puts "Actual:   #{merge_sort(input_1)}"
puts
puts "Test Case 2"
puts "Input:    #{input_2}"
puts "Expected: #{expected_2}"
puts "Actual:   #{merge_sort(input_2)}"
puts
puts "Test Case 3"
puts "Input:    #{input_3}"
puts "Expected: #{expected_3}"
puts "Actual:   #{merge_sort(input_3)}"
puts
puts "Test Case 4"
puts "Input:    #{input_4}"
puts "Expected: #{expected_4}"
puts "Actual:   #{merge_sort(input_4)}"
puts
puts "Test Case 5"
puts "Input:    #{input_5}"
puts "Expected: #{expected_5}"
puts "Actual:   #{merge_sort(input_5)}"
