program Ej1;
var
  char: string;
begin
  writeln('Ingrese una letra'); readln(char);
  if ('A' <= char) AND (char <= 'Z') then
          writeln('Es mayuscula')
     else
         if ('a' <= char) AND (char <= 'z') then
                 writeln('Es minuscula')
             Else
                 writeln('Es otro');
  readln();


end.
