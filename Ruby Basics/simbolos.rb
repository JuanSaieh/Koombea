# Es una cadena inmutable

cadena = "Uriel"
cadena2 = "Uriel"

simbolo = :Uriel
simbolo2 = :Uriel

puts cadena.object_id
puts cadena2.object_id

puts simbolo.object_id
puts simbolo2.object_id

# Cuando usar simbolos
# 1.- Cuando no necesito modificar el string
# 2.- Cuando no necesito los metodos del string
# 3.- Los simbolos se usan como nombres
# 4.-