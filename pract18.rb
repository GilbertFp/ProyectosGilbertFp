class Perro
	def initialize(raza,nombre)
		@raza = raza
		@nombre = nombre
	end

	def ladrar
		puts "¡Guauu!"
	end

	def saludar
		puts "Im a dog, de la raza #{@raza} y nombre #{@nombre}"
	end
end

dog1=Perro.new('labra','akhas')
puts dog1.methods.sort
puts "la ide del obj es #{dog1.object_id}."

if dog1.respond_to?("correr")
	dog1.correr
else
	puts "El objeto no entiende ese método"
end

dog1.ladrar
dog1.saludar

dog2 = dog1  
dog2.saludar
 
dog1 = nil  
dog2.saludar

