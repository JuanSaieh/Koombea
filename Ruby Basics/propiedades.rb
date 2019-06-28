class Tutor
	attr_accessor :nombre		#define getter y setter
	#attr_reader :nombre			#define getter
	#attr_writer :nombre			#define setter

	def initialize(name)
		@nombre = name
	end

end

juan = Tutor.new("Juan")
jose = Tutor.new("jose")

juan.nombre = "Juan"
puts juan.nombre