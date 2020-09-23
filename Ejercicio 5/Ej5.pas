program Ej5;
var
  n1, n2, n3: integer;
begin
    writeln('Ingrese 3 numeros'); readln(n1,n2,n3);
    if (n1>n2) and (n1>n3) then
       writeln('El mayor es: ',n1)
       else
         if (n2>n1) and (n2>n3) then
            writeln('El mayor es: ', n2)
            else
              writeln('El mayor es: ',n3);
    readln();
end.

