program Ej4;
var
  dia, dia2, mes, mes2: byte;
  anio, anio2: word;
begin
  writeln('Ingrese la primer fecha'); readln(dia, mes, anio);
  {Validacion}
  if (dia > 31) or (mes > 12) then
     writeln('La fecha ingresada no es valida'); readln();
  writeln('Ingrese la segunda fecha'); readln(dia2, mes2, anio2);
  if (dia2 > 31) or (mes2 > 12) then
     writeln('La fecha ingresada no es valida'); readln();
  if (dia < dia2) and (mes < mes2) and (anio < anio2) then
     writeln('La primer fecha es mas antigua')
     else
       if (mes < mes2) and (anio = anio2) then
          writeln('La primer fecha es mas antigua')
          else
            if (dia < dia2) and (mes = mes2) and (anio = anio2) then
               writeln('La primer fecha es mas antigua')
               else
                 writeln('La segunda fecha es mas antigua');
  readln();
  case mes of
       1..3: writeln('1er Trimestre fecha 1');
       4..6: writeln('2do Trimestre fecha 1');
       7..9: writeln('3er Trimestre fecha 1');
       10..12: writeln('4to Trimestre fecha 1');
  end;
  readln();
  case mes2 of
       1..3: writeln('1er Trimestre fecha 2');
       4..6: writeln('2do Trimestre fecha 2');
       7..9: writeln('3er Trimestre fecha 2');
       10..12: writeln('4to Trimestre fecha 2');
  end;
  readln();
end.

