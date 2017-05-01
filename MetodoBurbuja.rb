class MetodoBurbuja
	def initialize()
	end

	def inicio()
		num=[4,5,2,3,4,3,5,3,1,2]
		
		begin
			intercambio = false
			(num.count-1).times do |i|				
				#saltar si no hay trabajo
				next if num[i]>=num[i+1]
				
				num[i],num[i+1]=num[i+1],num[i]
				intercambio=true
			end


		end while intercambio == true

		puts num.join(",")
				
	end


end

objeto = MetodoBurbuja.new()
objeto.inicio