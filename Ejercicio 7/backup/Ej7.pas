program Ej7;
const
  iva = 0.21;
var
  tipo, talle: char;
  precioBase: word;
  desc, precio,importeTotal: real;
  cantidad: byte;
begin
  writeln('Ingrese si la camisa es para hombre o mujer con H o M'); readln(tipo);
  if Upcase(tipo) = 'H' then
     precioBase:= 1000
  else
      if Upcase(tipo) = 'M' then
         precioBase:= 1200
         else
             writeln('No existe el tipo ingresado');

  writeln('Ingrese el talle S, M, L o X'); readln(talle);
  if (Upcase(talle) = 'S') and (Upcase(tipo) = 'H') then
     begin
     writeln('Tienes un descuento del 5% por el talle ingresado para hombre');
     desc:= (precioBase*0.05);
     precio:= precioBase - desc;
     end
     else
         if (Upcase(talle) = 'X') and (Upcase(tipo) = 'M') then
            begin
            writeln('Tienes un descuento del 5% por el talle ingresado para mujer');
            desc:= (precioBase*0.05);
            precio:= precioBase - desc;
            end
            else
                if (Upcase(talle) = 'M') or (Upcase(talle) = 'L') or ((Upcase(talle) = 'X') and (Upcase(tipo) <> 'M')) or (Upcase(talle) = 'S') and (Upcase(tipo) <> 'H') then
                   begin
                   writeln('No tienes descuento por talle ingresado');
                   precio:= precioBase;
                   end
                   else
                       writeln('No existe el talle ingresado');

     writeln('Ingrese la cantidad de camisas que desea comprar'); readln(cantidad);
     if cantidad >= 12 then
        begin
        precio:= precio*cantidad;
        desc:= precio*0.07;
        importeTotal:= precio + (precio*iva) - desc;
        end
     else
         if cantidad < 12 then
            importeTotal:= precio*cantidad + (precio*iva);


     writeln('Su importe total a pagar es: ', importeTotal:6:2);
     readln();

end.

