module Formula
  def perimetro_r ()
    @base * 2 + @altura * 2
  end

  def area_r ()
    @base * @altura
  end

  def perimetro_c ()
    @lado * 4
  end

  def area_c ()
    @lado * @lado
  end

end

class Rectangulo
  include Formula
  def initialize(base, altura)
    @base = base
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
  end

  def lados ()
    puts "Los lados del cuadrado miden #{@lado}"
  end
end

rec = Rectangulo.new(3, 4)
rec.lados
puts "El perímetro del rectángulo es #{rec.perimetro_r}"
puts "El área del rectángulo es #{rec.area_r}"

cua = Cuadrado.new(3)
cua.lados
puts "El perímetro del cuadrado es #{cua.perimetro_c}"
puts "El área del cuadrado es #{cua.area_c}"
