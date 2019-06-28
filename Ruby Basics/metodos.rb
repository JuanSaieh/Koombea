def square(x)
	#Retorna el cuadrado de un numero

	return 0 unless x.is_a? Integer
	x*x
end

def saludar
	puts "Hola mundo"
end

saludar()

puts square("a")