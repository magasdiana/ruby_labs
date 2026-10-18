# Завдання 1. Створення хешу гравців

players = {
  "Andriy" => "Воротар",
  "Bohdan" => "Захисник",
  "Dmytro" => "Захисник",
  "Ivan" => "Півзахисник",
  "Maksym" => "Півзахисник",
  "Oleh" => "Нападник",
  "Volodymyr" => "Нападник",
  "Roman" => "Захисник",
  "Taras" => "Півзахисник",
  "Yuriy" => "Нападник"
}

ratings = {
  "Andriy" => 8.5,
  "Bohdan" => 7.2,
  "Dmytro" => 0,
  "Ivan" => 8.0,
  "Maksym" => 6.5,
  "Oleh" => 9.1,
  "Volodymyr" => 5.8,
  "Roman" => 7.0,
  "Taras" => 0,
  "Yuriy" => 6.2
}

puts "Завдання 1. Список гравців:"
players.each do |name, position|
  puts "#{name} — #{position}"
end

# Завдання 2. Перетворення хешу в індексний масив

indexed_players = players.to_a

puts "\nЗавдання 2. Індексний масив:"
indexed_players.each_with_index do |player, index|
  puts "#{index}: #{player[0]} — #{player[1]}"
end

# Завдання 3. Сортування за ім'ям або позицією

puts "\nЗавдання 3. Сортування:"
puts "1 — за ім'ям"
puts "2 — за позицією"
print "Оберіть опцію: "
option = gets.to_i

if option == 1
  sorted_players = players.sort_by { |name, position| name }
elsif option == 2
  sorted_players = players.sort_by { |name, position| position }
else
  sorted_players = nil
  puts "Неправильний вибір!"
end

if sorted_players
  sorted_players.each do |name, position|
    puts "#{name} — #{position}"
  end
end

# Завдання 4. Три гравці з найкоротшими іменами

puts "\nЗавдання 4. Три найкоротші імена:"

shortest_names = players.keys.sort_by { |name| name.length }.first(3)

shortest_names.each do |name|
  puts "#{name} (#{name.length} символів)"
end

# Завдання 5. П'ять найменших ненульових рейтингів

puts "\nЗавдання 5. П'ять найменших ненульових рейтингів:"

lowest_ratings = ratings.select do |name, rating|
  rating > 0
end.sort_by do |name, rating|
  rating
end.first(5)

lowest_ratings.each do |name, rating|
  puts "#{name} — #{rating}"
end

# Завдання 6. Пошук гравця за ім'ям

puts "\nЗавдання 6. Пошук гравця:"
print "Введіть ім'я гравця: "
search_name = gets.strip

if players.key?(search_name)
  puts "Позиція гравця #{search_name}: #{players[search_name]}"
else
  puts "Гравця не знайдено."
end

# Завдання 7. Кількість гравців у команді

puts "\nЗавдання 7. Кількість гравців:"
puts "У команді #{players.size} гравців."

# Завдання 8. Перевірка та заповнення порожніх позицій

players["Vladyslav"] = nil
players["Mykhailo"] = ""

puts "\nЗавдання 8. Перевірка позицій:"

players.each do |name, position|
  if position.nil? || position.strip.empty?
    print "Введіть позицію для #{name}: "
    players[name] = gets.strip
  end
end

puts "\nОновлений список гравців:"
players.each do |name, position|
  puts "#{name} — #{position}"
end
