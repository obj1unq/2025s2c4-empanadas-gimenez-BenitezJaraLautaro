//Escribir aqui los objetos
object galvan  {
    var sueldo = 15000

    method cambioSueldo(sueldoNuevo) {
      sueldo = sueldoNuevo
    }


}

object baigorria {
  const pagoPorEmpanada = 15

  var ventaEmpanadas = 0

  method vendio_empandas(empanadasVendidas) {
    ventaEmpanadas = empanadasVendidas
  }
  
  method empanadasQueVedio() {
    return ventaEmpanadas
  } 
}

object gimenez {
  var fondoParaSueldo = 300000
}