#BLOQUES
class Array
	def iterar
		#ejecuta un bloque de código por cada elemento
		#que exista
		self.each_with_index do |n,i| 
			self[i] = yield(n)#ejecuta todo el bloque
		end

	end
end

arreglo=[1,2,3,4]
arreglo.iterar do |n|
	n**2
end

for i in arreglo
	puts i
end
gets()