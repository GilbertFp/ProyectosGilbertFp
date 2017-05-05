class ControlAccesos
	def initialize()
	end

	def times_two(a)
		print a, " dos veces es ",engine(a),"\n"
	end

	def engine(b)
		b*2
	end
	private:engine

end

objeto=ControlAccesos.new
objeto.times_two(3)