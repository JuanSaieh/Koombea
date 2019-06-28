class Humano
	def initialize
	end

	def publico
		puts "soy publico"
	end

	private
		def privado
			puts "soy privado"
		end
	protected
		def protegido
			puts "soy protegido"
		end
end

class Tutor < Humano
	def initialize
		@inner = Humano.new
	end

	def llamar_protegido
		@inner.protegido
	end
end

class Alien
	def initialize
		@inner = Humano.new
	end

	def llamar_protegido
		@inner.protegido
	end
end


Tutor.new.llamar_protegido    #el hijo puede llamar metodos protegidos afuera de la clase
							#los hijos no pueden llamar metodos privados, tienen que ser dentro de la misma clase
#Alien.new.llamar_protegido