#cantidad dimensiones: 2 dimensiones
#Arreglos internos, deben tener la misma cantidad elementos
# Matrix => todos los elementos deben ser numeros
require "matrix"

# [
# 	1 8 3
# 	5 2 2
#	5 2 2
# ]


matriz = Matrix[[1, 0, 0], [0, 2, 0],[0, 0, 1]]


# matriz.each(:diagonal) do |i|
# 	puts i
# end

puts matriz.diagonal?