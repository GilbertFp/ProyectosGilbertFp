# CONOCIENDO UN LENGUAJE DESCONOCIDO COMPLETAMENTE PARA MI
# Es una versión en desarrollo, no un programa terminado
# Estado: Depurando código para la forma de programación en Ruby
# Estado: Actualizando a gosu

#Constantes temporales
$x=30
$y=18


class Tablero
	def initialize()
		@tablero = Array.new($x) { Array.new($y){
			if rand(2)==1
				" "
			else
				0
			end
				}
		 	}
		@celdCercanas = [-1, 0, 1].product([-1, 0, 1]) - [[0, 0]]
		#Matriz de pruebas (temporal)
		@tablero=[  [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
		 			 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," ", 0 , 0 , 0 ," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," ", 0 ," "," "," ", 0 ," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," ", 0 ," "," "," ", 0 ," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," ", 0 , 0 , 0 ," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," ", 0 , 0 , 0 ," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," ", 0 ," "," "," ", 0 ," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," ", 0 ," "," "," ", 0 ," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," ", 0 , 0 , 0 ," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
					 [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "]
					]
		
	end

	def creaTablero()
		$x.times do |i|
			print "\n"
			print " | "
			$y.times do |j|							
				print @tablero[i][j]
				print " | "				
			end			
		end	
		print "\n"
	end

	def celdasClose(ri,pos)
		cont=0
		@celdCercanas.map {|e|  
					posx=e[1]+ri
					posy=e[0]+pos
					if (posx>-1 && posx < $x) && (posy>-1 && posy < $y)
						
						if @tablero[posx][posy] == 0
							cont+=1
						end

					end

				}
				return cont
	end


	def estados()
		posx=0
		posy=0
		cont=0
		i=-1
		posiciones=[]
		creaTablero

		@tablero.each_with_index.map { |r,ri| r.each_with_index.map { |a,pos| 
			if (a == 0)
				cont = celdasClose(ri,pos)				
				if cont<2 || cont>3
					posiciones[i+=1]=[1,ri,pos]					
				end
				cont=0
			else
				cont = celdasClose(ri,pos)
				if cont==3
					posiciones[i+=1]=[2,ri,pos]
				end
				
				cont=0	

			end
		 }  
		}

		posiciones.each do |dato|
			
			if dato[0]==1
				@tablero[dato[1]][dato[2]]=" "

			else
				@tablero[dato[1]][dato[2]]=0
			end
		end

		
		 

	end

	def play()
		system "cls"		
		for i in (1..1055)
			estados
			sleep 0.1
			system "cls"

		end


	end

	
end

tab = Tablero.new
tab.play
