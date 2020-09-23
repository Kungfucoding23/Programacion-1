program Ej8;
const
  costo18 = 1800;
  costo13 = 1200;
  costo5 = 750;
  depAd = 250;
  costoPileta = 850;
  recargo = 0.05;
var
  edad, cantDep, dia: byte;
  costo: real;
  pileta: char;
begin
  writeln('Ingrese su edad'); readln(edad);
  writeln('Ingrese la cantidad de deportes que realiza'); readln(cantDep);
  writeln('Ingrese el dia de pago'); readln(dia);
  if (edad >= 5) and (edad <= 12) then
     costo:= costo5
     else
       if (edad >= 13) and (edad <= 18) then
          costo:= costo13
          else
            if edad > 18 then
               costo:= costo18
               else
                 costo:= 0;
  if cantDep > 2 then
     costo:= costo + depAd;
  writeln('Realiza pileta? S/N'); readln(pileta);
  pileta:= Upcase(pileta);
  if pileta = 'S' then
     costo:= costo + costoPileta;
  if dia >= 15 then
     costo:= costo + (costo*recargo);
  writeln('El costo total a pagar es: $', costo);
  readln();
end.

