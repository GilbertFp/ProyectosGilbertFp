class Arreglos
	def initialize()
	end

	def inicio()
		ejem = [1,2,3,4]
		otro=ejem.map { |i| i+1  }
		for i in otro
			puts i
		end

		otro=ejem.select{|numero| numero%2==0}
		for i in otro
			puts i
		end

	end


end

objeto = Arreglos.new()
objeto.inicio