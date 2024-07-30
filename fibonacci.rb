def fibs(n)
  result = []

  for i in 0...n
    if i < 2
      result << i
    else
      result << result[i - 1] + result[i - 2]
    end
  end

  result
end

def fibs_rec(n)
  return [] if n < 1
  return [0] if n == 1
  return [0, 1] if n == 2

  fibs_arr = fibs_rec(n - 1)
  fibs_arr << fibs_arr[-1] + fibs_arr[-2]
end

puts 'Testing negatives...'
puts
puts "fibs(-100)     = #{fibs(-100)}"
puts "fibs_rec(-100) = #{fibs_rec(-100)}"
puts "fibs(-100) equals fibs_rec(-100) ? #{fibs(-100) == fibs_rec(-100)}"
puts "fibs(-3)     = #{fibs(-3)}"
puts "fibs_rec(-3) = #{fibs_rec(-3)}"
puts "fibs(-3) equals fibs_rec(-3) ? #{fibs(-3) == fibs_rec(-3)}"
puts "fibs(-2)     = #{fibs(-2)}"
puts "fibs_rec(-2) = #{fibs_rec(-2)}"
puts "fibs(-2) equals fibs_rec(-2) ? #{fibs(-2) == fibs_rec(-2)}"
puts "fibs(-1)     = #{fibs(-1)}"
puts "fibs_rec(-1) = #{fibs_rec(-1)}"
puts "fibs(-1) equals fibs_rec(-1) ? #{fibs(-1) == fibs_rec(-1)}"
puts
puts 'Testing zero...'
puts
puts "fibs(0)     = #{fibs(0)}"
puts "fibs_rec(0) = #{fibs_rec(0)}"
puts "fibs(0) equals fibs_rec(0) ? #{fibs(0) == fibs_rec(0)}"
puts
puts 'Testing positives...'
puts
puts "fibs(1)     = #{fibs(1)}"
puts "fibs_rec(1) = #{fibs_rec(1)}"
puts "fibs(1) equals fibs_rec(1) ? #{fibs(1) == fibs_rec(1)}"
puts "fibs(2)     = #{fibs(2)}"
puts "fibs_rec(2) = #{fibs_rec(2)}"
puts "fibs(2) equals fibs_rec(2) ? #{fibs(2) == fibs_rec(2)}"
puts "fibs(3)     = #{fibs(3)}"
puts "fibs_rec(3) = #{fibs_rec(3)}"
puts "fibs(3) equals fibs_rec(3) ? #{fibs(3) == fibs_rec(3)}"
puts "fibs(4)     = #{fibs(4)}"
puts "fibs_rec(4) = #{fibs_rec(4)}"
puts "fibs(4) equals fibs_rec(4) ? #{fibs(4) == fibs_rec(4)}"
puts "fibs(8)     = #{fibs(8)}"
puts "fibs_rec(8) = #{fibs_rec(8)}"
puts "fibs(8) equals fibs_rec(8) ? #{fibs(8) == fibs_rec(8)}"
puts "fibs(20)     = #{fibs(20)}"
puts "fibs_rec(20) = #{fibs_rec(20)}"
puts "fibs(20) equals fibs_rec(20) ? #{fibs(20) == fibs_rec(20)}"
