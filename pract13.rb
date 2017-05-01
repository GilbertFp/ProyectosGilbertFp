class Arreglos
	def initialize()
	end

	def inicio()
		#Diccionarios HASH
		cursos={'ruby'=>21, 'Pagina web'=>15, 'html5'=>25}
		#Agregar un dato al diccionario
		#cursos['html5']=25
		#puts cursos['html5']

=begin
		cursos.each do |key,value|
			puts "#{key} tiene #{value} videos"
		end
=end

		indices = cursos.keys
		indices.each {|i| puts i}

	end


end

objeto = Arreglos.new()
objeto.inicio