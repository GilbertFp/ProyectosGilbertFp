class CicloCondicional
	def initialize()
	end

	def inicio()
		hora = 16
		if hora<12
			puts "Buenos días"
		else
			puts "Buenas tardes"
		end
	end
end

objeto = CicloCondicional.new()
objeto.inicio
gets()