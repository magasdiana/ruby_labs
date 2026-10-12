# Лабораторна 1 Варіант № 23
# Завдання 1 Обчислити середнє геометричне двох додатніх чисел G=sqrt(a*b)

puts "Завдання 1"

a = 4
b = 9

g = Math.sqrt(a*b) 

puts "a = #{a}"
puts "b = #{b}"
puts "G = #{g}" 

# Завдання 2: Створити масив із 10 випадкових чисел від -10 до 10
# Замінити всі числа менше 0 на 1

puts "Завдання 2"
numbers = Array.new(10) { rand(-10..10) }

puts "Початковий масив:"
p numbers

numbers = numbers.map { |x| x < 0 ? 1 : x }

puts "Результат:"
p numbers

# Завдання 3: Порахувати суму квадратів елементів масиву

puts"Завдання 3"

numbers = [1, 2, 3, 4, 5]

sum1 = numbers.sum { |x| x**2 }

sum2 = numbers.map { |x| x**2 }.reduce(:+)

puts "Через sum: #{sum1}"
puts "Через map + reduce: #{sum2}"

# Завдання 4: Згрупувати спортсменів за видом спорту
# та обчислити середній вік для кожного виду спорту

puts "Завдання 4"
athletes = [
  {name: "Іван", age: 22, sport: "Tennis"},
  {name: "Олена", age: 24, sport: "Tennis"},
  {name: "Володя", age: 20, sport: "Football"},
  {name: "Анна", age: 28, sport: "Football"},
  {name: "Марія", age: 20, sport: "Swimming"},
  {name: "Влад", age: 24, sport: "Swimming"}
]

groups = athletes.group_by { |athlete| athlete[:sport] }

groups.each do |sport, group|
  average = group.sum { |athlete| athlete[:age] }.to_f / group.length
  puts "#{sport}: #{average}"
end


#Завдання 4 2 спосіб
puts "Завдання 4(2 спосіб)"
athletes = [
  {name: "Іван", age: 22, sport: "Tennis"},
  {name: "Олена", age: 24, sport: "Tennis"},
  {name: "Володя", age: 20, sport: "Football"},
  {name: "Анна", age: 28, sport: "Football"},
  {name: "Марія", age: 20, sport: "Swimming"},
  {name: "Влад", age: 24, sport: "Swimming"}
]

sports = athletes.map { |athlete| athlete[:sport] }.uniq

sports.each do |sport|
  group = athletes.select { |athlete| athlete[:sport] == sport }

  ages = group.map { |athlete| athlete[:age] }
  average = ages.sum.to_f / ages.length

  puts "#{sport}: #{average}"
end