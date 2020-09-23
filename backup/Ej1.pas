program Ej1;
var
  char: string;
begin
  writeln('Ingrese una letra'); readln(char);
  if ('A' <= char) AND (char <= 'Z') then
     begin
          writeln('Es mayuscula'); readln();
     end
     else
         if ('a' <= char) AND (char <= 'z') then
            begin
                 writeln('Es minuscula'); readln();
            end
             Else
                 writeln('Es otro'); readln();


end.
