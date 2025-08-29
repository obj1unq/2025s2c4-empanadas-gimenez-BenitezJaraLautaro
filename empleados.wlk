//Escribir aqui los objetos
object galvan  {
    var sueldoAhora = 15000 
    var deuda  = 0
    var dinero = 0
    var gestion = 0 //esta varieble sirve para restarle el valor de deuda a dinero 

    method sueldoActual() {
      return sueldoAhora 
    }

    method cambiarSueldo(sueldoNuevo) {
      sueldoAhora = sueldoNuevo
    }

    method dinero() {
      return dinero
    }

    method deuda() {
      return deuda
    }

    method gastar(cuanto) {
      if (cuanto <= dinero) {
        dinero = dinero - cuanto
      } else {
        deuda  = (deuda + cuanto) - dinero
        dinero = 0
      }
    }

    method cobrarSueldo() {
      dinero  = dinero + self.sueldoActual()
      gestion = deuda
      deuda   = deuda  - dinero
      deuda   = 0.max(deuda)
      dinero  = dinero - gestion
      dinero  = 0.max(dinero)
      gestion = 0
    }

}


object baigorria {

  var ventaEmpanadas    = 0
  var cobradoHastaAhora = 0

  method vender(empanadasVendidas) {
    ventaEmpanadas = ventaEmpanadas + empanadasVendidas
  }
  
  method empanadasQueVendio() {
    return ventaEmpanadas
  } 

  method sueldoActual() {
    return 15*ventaEmpanadas
  }

  method totalCobrado() {
    return cobradoHastaAhora
  }

  method cobrarSueldo() {
    cobradoHastaAhora = cobradoHastaAhora + self.sueldoActual()
    ventaEmpanadas = 0
  }
}

object gimenez {
  var fondoParaSueldo = 300000

  method pagarSueldo(empleado) {
    fondoParaSueldo = fondoParaSueldo - empleado.sueldoActual()
    empleado.cobrarSueldo()
  }
  method fondo() {
    return fondoParaSueldo
  }


}