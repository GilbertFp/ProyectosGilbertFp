class EntradaDatos
	def initialize()
	end

	def inicio()
		nombre=ARGV[0]
		print "hola "+nombre
	end


end

objeto = EntradaDatos.new()
objeto.inicio
