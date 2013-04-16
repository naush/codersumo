# You can code in Ruby

romans = {
  'I'  => 1,
  'IV' => 4,
  'V'  => 5,
  'IX' => 9,
  'X'  => 10,
  'XL' => 40,
  'L'  => 50,
  'XC' => 90,
  'C'  => 100,
  'CD' => 400,
  'D'  => 500,
  'CM' => 900,
  'M'  => 1000
}

while line = gets
  numeric = 0
  romans.keys.reverse.each do |roman|
    while line.start_with?(roman)
      numeric = numeric + romans[roman]
      line = line.slice(roman.length, line.length)
    end
  end
  puts numeric
end