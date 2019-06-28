class SoyObjeto
	@nombre_clase = "Soy objeto :)"

	class << self
		def nombre_clase
			@nombre_clase
		end

		def nombre_clase= (nombre_clase)
			@nombre_clase
		end
	end
end

SoyObjeto.nombre_clase = "otra cosa"

puts SoyObjeto.nombre_clase


