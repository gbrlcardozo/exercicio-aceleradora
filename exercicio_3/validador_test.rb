require 'minitest/autorun'

require_relative 'validador'

# http://rubyquiz.com/quiz122.html
# https://www.wepay.com/developer/reference/testing

class ValidadorTest < Minitest::Test
  def setup
    @validador = Validador.new
  end

  def test_visa_valido
    cartao = @validador.valida "4003830171874018"

    assert_equal cartao.bandeira, "VISA"
  end

  def test_visa_com_quantidade_invalida_de_digitos
    cartao = @validador.valida "40038301718740"

    assert_equal cartao.bandeira, "INVALIDO"
  end

  def test_master_valido
    cartao = @validador.valida "5496198584584769"

    assert_equal cartao.bandeira, "MASTER"
  end

  def test_master_com_quantidade_invalida_de_digitos
    cartao = @validador.valida "54961985845847"

    assert_equal cartao.bandeira, "INVALIDO"
  end

  def test_amex_valido
    cartao = @validador.valida "3782822463100054"

    assert_equal cartao.bandeira, "AMEX"
  end

  def test_amex_com_numero_invalido_de_digitos

    cartao = @validador.valida "3782822463100"

    assert_equal cartao.bandeira, "INVALIDO"
  end

  def test_cartao_com_sequencia_valida_de_numeros

    cartao = @validador.valida "4003830171874018"

    assert_equal cartao.bandeira, "VISA"
  end

  def test_cartao_com_sequencia_invalida_de_numeros
    
    cartao = @validador.valida "40038301718740179"

    assert_equal cartao.bandeira, "INVALIDO"
  end
end
