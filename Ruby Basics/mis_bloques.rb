def hola &bloque
	bloque.call if block_given?
end

def otro_hola 
	yield if block_given?
end


hola {puts "hola juan"}
