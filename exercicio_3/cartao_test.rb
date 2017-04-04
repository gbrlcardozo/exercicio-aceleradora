require 'minitest/autorun'

require_relative 'cartao'

class CartaoTest < Minitest::Test
  def test_mascara_numero
    cartao = Cartao.new("VISA", "4123123412341234")

    numero_mascarado = cartao.numero_mascarado()

    assert_equal numero_mascarado, "4123************"
  end
end
