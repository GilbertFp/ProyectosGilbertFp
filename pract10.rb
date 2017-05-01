class Ciclos
	def initialize()
	end

	def inicio()
		i=0

		while i<5 do
			print i
			i += 1			
		end

		print "\n"
		i=0;

		begin
			print i
			i += 1
		end while i<5

		print "\n"
		i=0;

		until i>5 do
			print i
			i += 1			
		end

		print "\n"
		i=0;

		begin
			print i
			i += 1
		end until i>5
			
		


	end


end

objeto = Ciclos.new()
objeto.inicio
gets()