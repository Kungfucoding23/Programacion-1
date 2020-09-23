program Ej3;
var
  temp: integer;
begin
 writeln('Ingrese la temperatura'); Readln(temp);
 If temp < 0 then
    writeln('No salgo de casa')
    Else
      if (temp >= 0) and (temp < 20) then
         writeln('Hace frio')
         Else
           if (temp >= 20) and(temp < 29) then
              writeln('Barbaro')
              Else
                writeln('Qué calor!!');
 readln();
end.

