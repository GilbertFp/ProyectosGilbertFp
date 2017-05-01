$varGlob = "Informaci0n variable global"

class VariableGlobal

	def initialize()
		@varGlob = "VariableInstancia"
		$varGlob = "Modificando varGlob"
	end

	def inicio()
		ejemplo = "variableLocal"
		puts ejemplo
		puts @varGlob
		puts $varGlob
	end
end
objeto=VariableGlobal.new()
objeto.inicio
gets()