# EJERCICIO 

Realizar un sistema de facturación de llamadas telefónicas teniendo en cuenta los siguientes
requerimientos:
  1. La facturación se realiza de manera mensual
  2. La facturación está compuesta por:
     + Un abono mensual básico
     + Consumo por llamadas Locales
     + Consumo por llamadas Nacionales e Internacionales
  3. Las llamadas locales tienen distintos valores según la franja horaria en la que se
  realizan y el día. Para los días hábiles, de 8 a 20 hrs. el costo es de 0,20 centavos el
  minuto, mientras en el resto de las horas es de 0,10 centavos el minuto. Los sábados
  y domingos cuesta 0,10 centavos el minuto
  4. Las llamadas Internacionales tienen un costo distinto según el país al que se llame
  5. Las llamadas Nacionales tienen un costo distinto según la localidad a la que se
  llame

## Diagrama UML
  
  
## Detalles

### Clase Bill

En el método monthlyBill calculé el total de la factura dado un mes segun las llamadas realizadas,
con printMonthlyBill imprimo la informacion de la factura mensual y con printMonthlyCalls imprimo 
las llamadas realizadas en un mes dado.

### Clase Call

_InternationalCall_

Le asigné un valor fijo al costo de las llamadas como al codigo de pais para simplificar como  

_LocalCall_

El metodo seeTimeSlot me devuelve true si la llamada está dentro de las 8amm y 8pm, y el metodo isBusinessDay
devuelve true si llama entre lunes(2) y viernes(6).

_NationalCall_

Nuevamente le asigné un valor fijo al costo solo para simplificar, entendiendo que segun el codigo recibido a 
traves de callTo se podria establecer qué precio tienen las llamadas, tanto nacionales como internacionales.

  
  
