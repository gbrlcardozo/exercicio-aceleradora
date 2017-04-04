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

class Hamming
  def calcula(segmento_1, segmento_2)
    a = 0
    b = 0
    cont = 0

    if segmento_1.size != segmento_2.size
      raise ArgumentError.new()
    end

    for i in 0...segmento_1.size
      for j in 0...segmento_2.size
        if a == b
          if segmento_1[a] != segmento_2[b]
            cont = cont + 1
          end
        end
        b = b + 1
      end
      a = a + 1
    end

    return cont

  end
end
