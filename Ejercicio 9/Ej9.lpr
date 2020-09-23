program Ej9;
const
  sueldoBasico = 8000;
  comision = 0.05;
  inasistencia = 0.07;
  superar = 0.03;
var
  monto, sueldo, montoAlcanzado: real;
  presentismo: byte;
begin
  writeln('Ingrese el monto que se debe alcanzar en ventas'); readln(monto);
  writeln('Ingrese el monto alcanzado'); readln(montoAlcanzado);
  writeln('Cuantas veces falto?'); readln(presentismo);
  if montoAlcanzado >= monto then
     sueldo:= sueldoBasico + (sueldoBasico*superar)
     else
         if montoAlcanzado < monto then
            sueldo:= sueldoBasico;
  readln();
  if presentismo = 0 then
     if 1000 >= (0.02*montoAlcanzado) then
        sueldo:= sueldo + 1000
        else
        begin
          sueldo:= sueldo + (0.02*montoAlcanzado);
        end
        else
            if presentismo >= 2 then
               sueldo:= sueldo - (inasistencia*sueldo);
  sueldo:= sueldo + (montoAlcanzado*comision);
  writeln('El vendedor debe cobrar: $',sueldo:8:2);
  readln();
end.

