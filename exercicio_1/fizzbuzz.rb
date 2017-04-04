# FizzBuzz verifica o número recebido
# Se for divisível por 3, retorna 'Fizz'
# Se for divisível por 5, retorna 'Buzz'
# Se for divisível por 3 e 5, retorna 'FizzBuzz'
# Caso contrário, retorna o próprio número recebido

class FizzBuzz
  def verifica numero
    if numero % 3 == 0 && numero % 5 == 0
      return "FizzBuzz"
    elsif numero % 3 == 0
      return "Fizz"
    elsif numero % 5 == 0
      return "Buzz"
    else
      return numero
    end
  end
end
