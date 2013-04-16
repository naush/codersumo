# You can code in Ruby

while line = gets
  count = 0
  characters = line.split('')
  prev = characters.first
  output = ''

  characters.each do |character|
    if prev == character
      count = count + 1
    else
      output = output + count.to_s + prev
      count = 1
    end

    prev = character
  end

  puts output
end