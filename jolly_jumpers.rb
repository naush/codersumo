# You can code in Ruby

while line = gets
  numbers = line.split.map(&:to_i)
  differences = []

  numbers.each_cons(2) do |consecutives|
    differences << consecutives.inject(&:-).abs
  end

  if differences.uniq.sort == (1...numbers.size).to_a
    puts ':)'
  else
    puts ':('
  end
end