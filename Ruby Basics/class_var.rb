class Video
	@@de_clase ="clase "
	@de_instancia = "instancia"

	def self.test
		p @@de_clase
		p @de_instancia
	end
end

class Youtube < Video
	def self.test
		@@de_clase = "Cambio tecnico"
		p @@de_clase
		p @de_instancia
	end
end

Youtube.test
Video.test
