def hola(nombre:"", edad:0, **options)
	if edad > 30
		puts "hola señor #{nombre}"
	elsif edad < 30
		puts "hola joven #{nombre}"
	end

	puts options

end


hola(nombre:"Uriel", edad:23)

hola(edad: 31, nombre: "Juan", color: "azul", animal: "perro")