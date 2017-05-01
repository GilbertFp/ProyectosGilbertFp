class Lambd
	def initialize()
	end

	def inicio()
		#Funciones anónimas y return valores

		lamb = lambda{"hola mundo"}
		puts lamb.call

		
		lamb = lambda{|numero| numero+1}
		puts lamb.call(2)

		lamb = lambda do |nombre|
			if nombre == "Pedro"
				return "Bienvenido #{nombre}"
			else
				return "Bienvenido Anónimo"
			end
		end
		nom=gets()
		print nom=="Pedro"
		saludo= lamb.call(nom)
		puts saludo
	end
end

objeto = Lambd.new()
objeto.inicio