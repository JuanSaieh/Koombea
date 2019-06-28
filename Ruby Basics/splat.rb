def hola_gente(mensaje, *personas)
	#personas es un arreglo
	personas.each {|persona| puts "#{mensaje} #{persona}"}
end

nombres = ["Uriel", "coco", ""]

hola_gente("Hola", *nombres)

