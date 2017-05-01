class SwitchCase

	def initialize()

	end

	def inicio()
		variable = "Bisección"

		resp = case variable
		when "Bisección","Falsa Posición" then "Métodos cerrados"
		when "Punto Fijo","Secante" 	  then "Métodos abiertos"
		else "Método no reconocido"
		end

		print resp
		
	end

end

objeto = SwitchCase.new()
objeto.inicio
gets()