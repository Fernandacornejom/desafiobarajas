#Crear la clase carta con los atributos numero y pinta. 
#Agregar los getters y setters a ambos atributos.
#Crear el constructor de la clase carta que le permita recibir un número del 1 al 13 y la pinta que está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D', Espada: 'E' o Trébol: 'T'. 
#Utilizar el ejercicio Carta creado en la primera parte y dejarlo en el archivo carta.rb.
#Crear la clase baraja en el archivo barajas.rb con el atributo cartas, el cual será un arreglo. 
#Al crear una baraja (constructor) se deben generar todas las combinaciones de números y pinta y guardarse dentro del arreglo cartas.
#Crear el método barajar que debe desordenar el arreglo de cartas Tip: Utilizar .shuffle.
#Crear el método sacar que permita retirar la primera carta de la baraja Tip: Utilizar .pop. 
#Crear el método repartir mano que devolverá un arreglo con las primeras 5 cartas de la baraja. 

class Carta
    attr_accessor :numero, :pinta
    
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
    end
    
    class Baraja
    attr_accessor :cartas
    
    def initialize
        @cartas = []
        pintas = ['C', 'D', 'E', 'T']
        numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
        pintas.each do |pinta|
        numeros.each do |numero|
            carta = Carta.new(numero, pinta)
            @cartas << carta
        end
        end
    end
    
    def barajar
        @cartas.shuffle
    end
    
    def sacar
        @cartas.pop
    end
    
    def repartir_mano
        mano = []
        5.times do
        mano << sacar
        end
        mano
    end
    end
    
    baraja = Baraja.new
    baraja.barajar
    mano = baraja.repartir_mano
    puts mano.inspect
    