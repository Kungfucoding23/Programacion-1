program Ej13;
const
  D = 120.80;
  E = 150.10;
  R = 26.50;
var
  pesos, conversion: real;
  tipo, resp: char;
begin
  repeat
  writeln('Ingrese la cantidad en pesos que desea convertir'); readln(pesos);
  while pesos <= 0 do
  begin
       writeln('Debe ingresar una cantidad mayor a cero');
       readln(pesos);
  end;
  writeln('Seleccione la moneda a la que desea convertir:');
  writeln('D: Dolar');
  writeln('E: Euro');
  writeln('R Real');
  readln(tipo);
  tipo:= Upcase(tipo);
  while (tipo <> 'D') and (tipo <> 'E') and (tipo <> 'R') do
  begin
       writeln('Debe seleccionar una de las opciones dadas'); readln(tipo);
  end;
  case tipo of
       'D': conversion:= pesos/D;
       'E': conversion:= pesos/E;
       'R': conversion:= pesos/R;
  end;
  writeln('Son $', conversion:8:2,' ',tipo);
  writeln('Desea continuar? S/N'); readln(resp);
  resp:= Upcase(resp);
  until resp = 'N';


end.

