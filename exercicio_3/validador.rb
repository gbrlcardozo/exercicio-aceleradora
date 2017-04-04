require_relative 'cartao'

class Validador

  def valida numero

    if numero[0] == "3"
      cartao = Cartao.new "AMEX", numero
    elsif numero[0] == "4"
      cartao = Cartao.new "VISA", numero
    elsif numero[0] == "5"
      cartao = Cartao.new "MASTER", numero
    end

    if numero.size != 16
      cartao = Cartao.new "INVALIDO", numero
      return cartao
    end

    return cartao
  end

end
