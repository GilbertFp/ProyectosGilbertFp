class Humano
	def identidad
		print "Soy una persona. \n"
	end

	def tarifa_tren(edad)
		if edad<12
			print "tarifa reducida. \n"
		else
			print "tarifa normal. \n"
		end
	end
end

class Estudiante<Humano
	def identidad
		print "Soy un estudiante. \n"
	end
end

class Estudiante2<Humano
	def identidad
		super
		print "También, soy un estudiante. \n"
	end
end

Humano.new.identidad
Estudiante.new.identidad
Estudiante2.new.identidad