class GuessWord
	def initialize()
	end

	def Guess

		dicDB = ['uno','dos','tres','cuatro']
		sWords = dicDB[rand(3)] 
		print " ¿ A d i v i n a? \n"
		
		while (1) 
			word = gets

			if word.chop==sWords
				puts "Felicidades\n"
				break
			else
				puts "Perdiste\n"
			end

			print " ¿ A d i v i n a? \n"

		end

	end

end

objeto = GuessWord.new()
objeto.Guess