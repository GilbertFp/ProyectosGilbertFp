class Cadenas

	def initialize()
	end

	def inicio()
		texto = "La suma de "
		texto << "23 + 12 es "
		result = 23+12
		print texto+"#{result}\n"

		texto2 = "ja, " * 5
		texto2 << "\n"
		print texto2

		texto3  = "ja, ja"
		texto4  = "jo, "
		compTam = texto3 <=> texto4 #Compara tamaño de cadenas 
		print compTam 
		print "\n"


		texto5  = "ja, ja"
		texto6  = "ja, jA"
		compCad = texto5.casecmp(texto6) #Compara exactitud de contenido de cadenas 
		print compCad
		print "\n"

		texto7 = "pedrito"
		texto7 = texto7.capitalize
		print texto7
		print "\n"

		texto8 = "HolaMundo"
		texto8.each_char{|c| print c 
			print "\n"}

		texto9 = "HolaMundo"
		texto9 = texto9.center(55,"*")
		print texto9


	end

end

objeto = Cadenas.new()
objeto.inicio

gets()