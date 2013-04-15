# You can code in Ruby
numbers = {
  0 => 'zero',
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine'
}

irregulars = {
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen',
}

tens = {
  2 => 'twenty',
  3 => 'thirty',
  4 => 'forty',
  5 => 'fifty',
  6 => 'sixty',
  7 => 'seventy',
  8 => 'eighty',
  9 => 'ninety'
}

divisions = {
  3 => 'hundred',
  4 => 'thousand'
}

while line = gets.chomp
  outputs = []
  digits = line.split('')
  digits.each_with_index do |digit, index|
    place = digits.size - index
    if place > 2 && digit != '0'
      outputs << numbers[digit.to_i]
      outputs << divisions[place]
    end
  end

  if digits.length > 1
    last_two = line[-2..-1]
    if irregulars.include?(last_two.to_i)
      outputs << irregulars[last_two.to_i]
    else
      outputs << tens[last_two[0].to_i]
      outputs << numbers[last_two[1].to_i]
    end
  else
    outputs << numbers[line.to_i]
  end

  puts outputs.join('-')
end
