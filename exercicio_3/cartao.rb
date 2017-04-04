class Cartao
  attr_accessor :bandeira

  def initialize bandeira, numero
    @bandeira = bandeira
    @numero = numero
  end

  def numero_mascarado
    return @numero.sub("123412341234", "************")
  end

end
