class Usuario
	attr_accessor :nombre

	def saludar
		saludo = yield(@nombre)
		puts saludo
	end
end

juan = Usuario.new
juan.nombre = "juan"

uriel.saludar{ |nombre|"hola #{nombre}"}