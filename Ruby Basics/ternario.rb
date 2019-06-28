user = "Juan"

# if user == "Juan"
# 	puts "Tutor"
# else
# 	puts "Visitante"
# end

respuesta = if user == "Juan" then 
	"Tutor" 
else 
	"visitante" 
end

puts respuesta



#si_condicion_verdadero ? entonces_resultado : si_no_esto

puts user == "Juan" ? "Tutor" : "Visitante"
