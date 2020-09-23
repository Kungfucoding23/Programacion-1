program Ej7v2;
const
  iva = 0.21;
  precioBH = 1000;
  precioBM = 1200;
var
  gen, talle: char;
  cant: byte;
  precio, desc, total: real;
begin
  writeln('Desea camisas para hombre o para mujer? ingrese H o M'); readln(gen);
  gen:= Upcase(gen);
  writeln('Ingrese el talle S, M, L o X'); readln(talle);
  talle:= Upcase(talle);
  case talle of
  'S': if gen = 'H' then
          begin
          desc:= precioBH*0.05;
          precio:=precioBH - desc;
          end
          else
            precio:=precioBM;
  'M': if gen = 'H' then
          precio:= precioBH
          else
            precio:= precioBM;
  'L': if gen = 'H' then
          precio:= precioBH
          else
            precio:= precioBM;
  'X': if gen = 'H' then
          precio:= precioBH
          else
            precio:= precioBM - (precioBM * 0.05);
  else
      writeln('No existe ese talle');

  end;
  writeln('Ingrese la cantidad que desea comprar'); readln(cant);
  if cant > 12 then
     total:= (precio*cant) - (precio*0.07) + (precio*iva)
     else
       total:= (precio*cant) + (precio*iva);
  writeln('El total a pagar es: $ ',total:8:2);
  readln();
end.

