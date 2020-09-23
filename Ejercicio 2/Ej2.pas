program Ej2;
var
  a, b, c: byte;
begin
  writeln('Ingrese a, b y c'); readln(a,b,c);
  if not(not(a = b) and not(b = c)) then
     writeln('Son iguales')
     else
       writeln('Son distintos'); readln();
end.

