def merge_sort(arr)
  return arr if arr.length < 2

  mid_idx = arr.length / 2
  l_half = merge_sort(arr[0...mid_idx])
  r_half = merge_sort(arr[mid_idx..-1])

  l_idx = 0
  r_idx = 0

  result = []

  while l_idx < l_half.length && r_idx < r_half.length
    if l_half[l_idx] < r_half[r_idx]
      result << l_half[l_idx]
      l_idx += 1
    else
      result << r_half[r_idx]
      r_idx += 1
    end
  end

  while l_idx < l_half.length
    result << l_half[l_idx]
    l_idx += 1
  end

  while r_idx < r_half.length
    result << r_half[r_idx]
    r_idx += 1
  end

  result
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
