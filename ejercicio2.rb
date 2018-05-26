module Formula
  def perimetro ()
    @lado * 2 + @altura * 2
  end

  def area ()
    @lado * @altura
  end

end

class Rectangulo
  include Formula
  def initialize(base, altura)
    @lado = base
    @altura = altura
  end

  def lados ()
    puts "Los lados del rectángulo miden #{@base} y #{@altura}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
    @altura = lado
  end

  def lados ()
    puts "Los lados del cuadrado miden #{@lado}"
  end
end

rec = Rectangulo.new(3, 4)
rec.lados
puts "El perímetro del rectángulo es #{rec.perimetro}"
puts "El área del rectángulo es #{rec.area}"

cua = Cuadrado.new(3)
cua.lados
puts "El perímetro del cuadrado es #{cua.perimetro}"
puts "El área del cuadrado es #{cua.area}"
