class Bicicleta
  attr_reader :marchas, :ruedas, :asientos # se hablará de attr_reader
  def initialize(marchas = 1)
    @ruedas = 2
    @asientos = 1
    @marchas = marchas
  end
end
 
class Tandem < Bicicleta
  def initialize(marchas)
    super
    @asientos = 2
  end
end
 
t = Tandem.new(2)
puts t.marchas
puts t.ruedas
puts t.asientos
b = Bicicleta.new
puts b.marchas
puts b.ruedas
puts b.asientos