class SinAccesores
  def initialize(titulo, artista)
    @titulo = titulo
    @artista = artista
  end

  def titulo
    @titulo
  end

  def artista
    @artista
  end

end

cancion = SinAccesores.new("Brazil", "Ivete Sangalo")
puts cancion.titulo
puts cancion.artista 

class ConAccesores
  def initialize(titulo, artista)
    @titulo = titulo
    @artista = artista
  end
 
  # accesor de lectura
  attr_reader :titulo, :artista
 
  # accesor de escritura
  # attr_writer :titulo
 
  # accesor de escritura y lectura
  # attr_accessor :titulo
end
 

cancion = ConAccesores.new("Brazil", "Ivete Sangalo")
puts cancion.titulo
puts cancion.artista