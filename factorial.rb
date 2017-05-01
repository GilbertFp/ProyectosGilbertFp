class Factorial
	def initialize()
	end

	def inicio()
		num=gets
		res=1
		
		(num.to_i).times do |i|			
			res *= (i+1)
		end 

		puts res
	end

end

objeto=Factorial.new()
objeto.inicio