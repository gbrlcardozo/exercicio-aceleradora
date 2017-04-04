require 'minitest/autorun'

require_relative 'hamming'

# Calcular a distancia de Hamming entre dois segmentos de DNA
#
# Durante a cópia de um ácido nucléico, pode haver uma mutação.
# A quantidade de nucleotídeos diferentes entre dois segmentos
# de DNA representa a distância de Hamming.
#
# Exemplo:
# GAGCCTAC
# GATCCGAC
#   ^  ^   duas mutações, distância de Hamming é 2
#
# A classe Hamming possui uma interface chamada #calcula que
# recebe duas strings, que são os segmentos a serem comparados
# Esse método (interface) deve retornar a distância de Hamming
# entre dois segmentos de DNA.

class HammingTest < Minitest::Test
  def setup
    @hamming = Hamming.new
  end

  def test_segmentos_simples_identicos_tem_distancia_0
    assert_equal 0, @hamming.calcula('A', 'A')
  end

  def test_segmentos_simples_diferentes_tem_distancia_1
    assert_equal 1, @hamming.calcula('A', 'T')
  end

  def test_segmentos_maiores_identicos_tem_distancia_0
    assert_equal 0, @hamming.calcula('GATACA', 'GATACA')
  end

  def test_segmentos_maiores_diferentes_tem_distancia_igual_ao_numero_de_mutacoes
    assert_equal 2, @hamming.calcula('GAGCCTAC', 'GATCCGAC')
    assert_equal 5, @hamming.calcula('GAGCCTAC', 'CCTCCGCC')
  end

  def test_segmentos_de_tamanhos_diferentes_nao_podem_ser_usados_para_calcular
    assert_raises(ArgumentError) { @hamming.calcula('GAC', 'GACTAC') }
  end
end
