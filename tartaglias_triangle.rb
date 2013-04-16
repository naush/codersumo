TRIANGLES = {
  1 => [1],
  2 => [1, 1]
}

def triangle(row)
  return TRIANGLES[row] if TRIANGLES[row]

  prev_row = triangle(row - 1)
  elements = []

  row.times do |number|
    if number == 0 || number == row - 1
      elements << 1
    else
      elements << prev_row[number] + prev_row[number - 1]
    end
  end

  TRIANGLES[row] = elements
  return elements
end

(1..15).each do |number|
  puts triangle(number).join(' ')
end