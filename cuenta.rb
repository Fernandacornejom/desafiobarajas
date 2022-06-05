# 1. Crear las clases Usuario y CuentaBancaria. (1 Punto)
# 2. Crear el constructor de la clase CuentaBancaria que reciba el nombre del banco, el
# número de cuenta y el saldo (el saldo por defecto será cero). (1 Punto)
# 3. Crear el método transferir en la clase Cuenta que reciba un monto y otra cuenta. Este
# método restará del saldo actual el monto y aumentará el saldo de la otra cuenta en el mismo
# monto. (1 Punto)
# 4. Probar creando dos cuentas cada una con un saldo de 5000 y transferir el total de una
# cuenta a la otra.
# 5. Crear el constructor de Usuario que reciba el nombre del usuario y un arreglo con al
# menos 1 cuenta bancaria. (1 Punto)
# 6. Crear el método saldo total que devuelva la suma de todos los saldos del usuario. (1
# Punto)

class Usuario
  attr_accessor :nombre, :cuentas

  def initialize(nombre, cuentas)
    @nombre = nombre
    @cuentas = cuentas
  end

  def saldo_total
    suma = 0
    cuentas.each do |cuenta|
      suma += cuenta.saldo
    end
    suma
  end
end

class CuentaBancaria
  attr_accessor :banco, :numero, :saldo

  def initialize(banco, numero, saldo = 0)
    @banco = banco
    @numero = numero
    @saldo = saldo
  end

  def transferir(monto, cuenta)
    @saldo -= monto
    cuenta.saldo += monto
  end
end

cuenta1 = CuentaBancaria.new('Banco bci', '123456789', 5000)
cuenta2 = CuentaBancaria.new('Banco bci', '987654321', 5000)

usuario = Usuario.new('Pablo', [cuenta1, cuenta2])

puts usuario.saldo_total