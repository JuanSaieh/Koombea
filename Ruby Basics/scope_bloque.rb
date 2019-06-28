def hola
	yield
end

nombre = "juan"

hola do |nombre|
	nombre = "marco"
	puts "#{nombre}"
end

puts nombre