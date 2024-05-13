|client1 client2 client3|

"Creamos algunos clientes"
client1 := Client name: 'Marta' number: '123456789' payment: 60.
client2 := Client name: 'Beatriz' number: '987654321' payment: 20.
client3 := Client name: 'Priscila' number: '111222333' payment: 80.

"Agregamos algunas llamadas para cada cliente durante un período de tiempo"
today := Date today.
startDate := today subtractDays: 30. "Vamos a simular un mes de llamadas"

startDate to: today do: [:date |
    client1 addCall: (LocalCall duration: 10 callFrom: '123456789' callTo: '987654321' date: date).
    client1 addCall: (NationalCall duration: 15 callFrom: '987654321' callTo: '123456789' date: date).
    client2 addCall: (InternationalCall duration: 20 callFrom: '123456789' callTo: '987654321' date: date).
    client3 addCall: (LocalCall duration: 8 callFrom: '111222333' callTo: '123456789' date: date).
    client3 addCall: (LocalCall duration: 12 callFrom: '123456789' callTo: '111222333' date: date).
].

"Generamos y mostramos las facturas mensuales para todos los clientes"
Transcript clear.
Transcript show: 'Facturas mensuales para el mes de Mayo:'; cr.
clients := {client1. client2. client3}.

clients do: [:client |
    | monthlyBill |
    monthlyBill := client monthlyBill: today.
    client printMonthlyBill: monthlyBill month: 'Mayo'.
    Transcript cr.
].
