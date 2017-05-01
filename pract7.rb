class SwitchCase
	def initialize()
	end

	def inicio()
		
		edad = 2

		respuesta = case edad
		when 0..11 then  "It's a child"
		when 12..17 then  "It's a boy"
		when 18..29 then  "It's a teenager"
		when 30..59 then  "It's a adult"
		when 60..150 then  "It's a old man"
		else  "Error"
		end

		print respuesta
				
				

	end
end

objeto = SwitchCase.new()
objeto.inicio
gets()