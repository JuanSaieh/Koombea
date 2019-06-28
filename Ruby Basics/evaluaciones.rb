#case

# 0 - 10; 5 es reprobado

print "Ingresa Calificacion: "
calificacion = gets.chomp.to_i

puts case calificacion
when 10
	"excelente"
when 9
	"muy bien"
when 8
	"puedes mejorar"
when 7,6
	"puedes mejorar"
else
	"horrible"
end