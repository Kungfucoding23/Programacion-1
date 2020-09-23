program Ej10;
const
   costoB = 1350; {costo básico}
   PP = 200;      {paquete peliculas}
   PD = 270;      {paquete deportes}
   internet = 800; {internet con 6MB}
   wifi = 0.2;     {internet 10MB + wifi 20% más}
   grabar = 150;   {costo por grabar programas}
   promo = 0.25; {promocion por cable + internet 25% descuento del total}
var
   total: real;
   resp: char; {variable para la respuesta a las preguntas}
   desc: byte; {contador para evaluar si tiene promocion}
begin
  desc:= 0;
  writeln('Desea agregar el paquete de peliculas? S/N'); readln(resp);
  resp:= Upcase(resp);
  if resp = 'S' then
     begin
     total:= costoB + PP;
     writeln('Son $200 mas');
     end
     else
       if resp = 'N' then
          begin
          total:= costoB;
          end
     else
         writeln('ERROR!');
  writeln('Desea agregar el paquete de deportes? S/N'); readln(resp);
  resp:= Upcase(resp);
  if resp = 'S' then
     begin
     total:= total + PD;
     writeln('Son $270 mas');
     end
     else
       if resp = 'N' then
          begin
          total:= total;
          end
     else
         writeln('ERROR!');
  writeln('Desea agregar internet? S/N'); readln(resp);
  resp:= Upcase(resp);
  if resp = 'S' then
     desc:= desc + 1;
     begin
     writeln('Desea internet con wifi? S/N'); readln(resp);
     resp:= Upcase(resp);
     if resp = 'S' then
     begin
     total:= total + internet + (internet*wifi);
     writeln('Es un 20% mas');
     end
     else
       if resp = 'N' then
          begin
          total:= total + internet;
          writeln('Son $800 mas');
          end
     end
     else
       if resp = 'N' then
          begin
          total:= total;
          end
     else
         writeln('ERROR!');
  writeln('Desea agregar la opcion de grabar? S/N'); readln(resp);
  resp:= Upcase(resp);
  if resp = 'S' then
     begin
     total:= total + grabar;
     writeln('Son 150 mas');
     end
     else
       if resp = 'N' then
          begin
          total:= total;
          end
     else
         writeln('ERROR!');
  {evaluo si tiene promo}
  if desc = 1 then
     begin
     total:= total - (total*promo);
     writeln('Accedio a la promocion y tiene un descuento del 25%!');
     end;
  writeln('Total a pagar: $',total:4:2,' pesos');
  readln();
end.

