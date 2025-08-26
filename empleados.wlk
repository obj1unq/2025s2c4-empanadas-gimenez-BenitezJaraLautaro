//Escribir aqui los objetos
object galvan  {
    var sueldoAhora = 15000 

    method sueldo() {
      return sueldoAhora 
    }

    method cambiarSueldo(sueldoNuevo) {
      sueldoAhora = sueldoNuevo
    }
}

object baigorria {

  var ventaEmpanadas = 0

  method vender(empanadasVendidas) {
    ventaEmpanadas = empanadasVendidas
  }
  
  method empanadasQueVendio() {
    return ventaEmpanadas
  } 

  method sueldoActual() {
    return 15*ventaEmpanadas
  }
}

object gimenez {
  var fondoParaSueldo = 300000

  method pagarSueldo(empleado) {
    fondoParaSueldo = fondoParaSueldo - empleado.sueldoActual()
  }
  method fondo() {
    return fondoParaSueldo
  }


}