# Завдання 10. Спосіб 1

def replace_year_1
  File.write("template.html", File.read("template.html").gsub("{{YEAR}}", "2026"))
  puts "Заміна виконана способом 1!"
end

# Завдання 10. Спосіб 2

def replace_year_2
  content = File.read("template.html")
  content = content.gsub("{{YEAR}}", "2026")
  File.write("template.html", content)
  puts "Заміна виконана способом 2!"
end

# replace_year_1
replace_year_2