def hola proc1, proc2
	proc1.call
	proc2.call
end

proc1 = Proc.new {puts "hola 1"}
proc2 = Proc.new {puts "hola 2"}

hola(proc1, proc2)

#por defecto bloques
#usa proc para: 
# reenviar el bloque a otros objetos
#almacenar bloque en una variable

# bloque es mas rapido
