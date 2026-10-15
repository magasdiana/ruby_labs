# Лабораторна 2 Варіант № 23

# Блок 1 Завдання 3(1 спосіб)
puts "Завдання 3(1 спосіб)"

numbers = [4, 9, 2, 9, 5, 9]

max_element = numbers[0]

for i in 1...numbers.length
  if numbers[i] > max_element
    max_element = numbers[i]
  end
end

indices = []

for i in 0...numbers.length
  if numbers[i] == max_element
    indices << i
  end
end
puts "Масив: #{numbers}"
puts "Максимальний елемент: #{max_element}"
puts "Індекси максимального елемента: #{indices}"

# Блок 1 Завдання 3(2 спосіб)
puts "Завдання 3 (2 спосіб)"

numbers = [4, 9, 2, 9, 5, 9]

max_element = numbers.max

indices = []

numbers.each_with_index do |number, index|
  if number == max_element
    indices << index
  end
end

puts "Масив: #{numbers}"
puts "Максимальний елемент: #{max_element}"
puts "Індекси максимального елемента: #{indices}"

# Блок 1 Завдання 4(1 спосіб)
puts "Завдання 4(1 спосіб)"

numbers = [10, 20, 30, 40, 50, 60]

even_positions = []
odd_positions = []

for i in 0...numbers.length
  if (i + 1) % 2 == 0
    even_positions << numbers[i]
  else
    odd_positions << numbers[i]
  end
end

result = even_positions + odd_positions

puts "Початковий масив: #{numbers}"
puts "Результат: #{result}"

# Блок 1 Завдання 4 (2 спосіб)
puts "Завдання 4(2 спосіб)"

numbers = [10, 20, 30, 40, 50, 60]

even_positions = []
odd_positions = []

numbers.each_with_index do |number, index|
  if (index + 1) % 2 == 0
    even_positions << number
  else
    odd_positions << number
  end
end

result = even_positions + odd_positions

puts "Початковий масив: #{numbers}"
puts "Результат: #{result}"

# Блок 2 Завдання 11 (1 спосіб)
puts "Завдання 11(1 спосіб)"

matrix = [
  [2, 4, 6],
  [8, 5, 1],
  [3, 7, 9]
]

sum = 0
i = 0

while i < matrix.length
  sum += matrix[i][i]
  i += 1
end

average = sum.to_f / matrix.length

puts "Сума діагоналі: #{sum}"
puts "Середнє арифметичне: #{average.round(2)}"

# Блок 2 Завдання 11 (2 спосіб)
puts "Завдання 11(2 спосіб)"

matrix = [
  [2, 4, 6],
  [8, 5, 1],
  [3, 7, 9]
]

sum = 0

matrix.each_with_index do |row, i|
  sum += row[i]
end

average = sum.to_f / matrix.length

puts "Сума діагоналі: #{sum}"
puts "Середнє арифметичне: #{average.round(2)}"

# Блок 2 Завдання 12 (1 спосіб)
puts "Завдання 12(1 спосіб)"

matrix = [
  [1, 2, 3],
  [0, 0, 0],
  [4, 0, 6],
  [0, 0, 0]
]

zero_rows = []
i = 0

while i < matrix.length
  all_zero = true
  j = 0

  while j < matrix[i].length
    if matrix[i][j] != 0
      all_zero = false
      break
    end

    j += 1
  end

  if all_zero
    zero_rows << i + 1
  end

  i += 1
end

puts "Номери рядків з усіма нулями: #{zero_rows}"

# Блок 2 Завдання 12 (2 спосіб)
puts "Завдання 12(2 спосіб)"

matrix = [
  [1, 2, 3],
  [0, 0, 0],
  [4, 0, 6],
  [0, 0, 0]
]

zero_rows = []

matrix.each_with_index do |row, index|
  if row.all? { |number| number == 0 }
    zero_rows << index + 1
  end
end

puts "Номери рядків з усіма нулями: #{zero_rows}"
