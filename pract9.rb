class Ciclos
	def initialize()
	end

	def inicio()
		puts *(1..10)
		print "\n"

		(1..10).each { 
			|i| print i 
			print "\n"	} 
		print "\n"

		1.upto(10) { 
			|i| print i 
			print "\n"	}
		print "\n"

		10.downto(1) { 
			|i| print i 
			print "\n"	}
		print "\n"

		10.times { 
			|i| print i 
			print "\n"	}
		print "\n"		

	end


end

objeto = Ciclos.new()
objeto.inicio
gets()