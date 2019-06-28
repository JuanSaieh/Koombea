edad = gets.chomp.to_i
numero_dos = gets.chomp.to_i

# if numero_uno > numero_dos
# 	puts "#{numero_uno} es mayor que #{numero_dos}"
# elsif numero_dos == numero_uno
# 	puts "Ambos numeros son iguales, #{numero_dos}"
# else
# 	puts "#{numero_uno} es menor que #{numero_dos}"
# end

#puts " #{numero_uno} es menor que #{numero_dos}" if numero_dos > numero_uno

# if edad < 18
# 	puts "no eres mayor de edad"
# end

puts "no eres mayor de edad, no puedes pasar" unless edad >= 18

