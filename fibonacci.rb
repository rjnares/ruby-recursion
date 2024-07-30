def fibs(n)
  result = Array.new(n)

  for i in 0...n
    if i < 2
      result[i] = i
    else
      result[i] = result[i - 1] + result[i - 2]
    end
  end

  result
end
