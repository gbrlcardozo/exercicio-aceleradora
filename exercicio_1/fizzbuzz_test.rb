require 'minitest/autorun'

require_relative 'fizzbuzz'

# FizzBuzz verifica o número recebido
# Se for divisível por 3, retorna 'Fizz'
# Se for divisível por 5, retorna 'Buzz'
# Se for divisível por 3 e 5, retorna 'FizzBuzz'
# Caso contrário, retorna o próprio número recebido

class FizzBuzzTest < Minitest::Test
  def setup
    @fizzbuzz = FizzBuzz.new
  end

  # Começar removendo o skip desse teste
  def test_retorna_fizz_quando_divisivel_por_3
    assert_equal 'Fizz', @fizzbuzz.verifica(3)
  end

  def test_retorna_buzz_quando_divisivel_por_5
    assert_equal 'Buzz', @fizzbuzz.verifica(5)
  end

  def test_retorna_fizzbuzz_quando_divisivel_por_3_e_5
    assert_equal 'FizzBuzz', @fizzbuzz.verifica(15)
  end

  def test_retorna_proprio_numero_quando_nao_divisivel_por_3_ou_5
    assert_equal 7, @fizzbuzz.verifica(7)
  end

  def test_retorna_proprio_numero_quando_entrar_com_8
    assert_equal 8, @fizzbuzz.verifica(8)
  end
end
