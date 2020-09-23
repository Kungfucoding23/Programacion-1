program Ej12;
var
  dia: byte;
  resp: char;
begin
  repeat
  writeln('Ingrese el dia entre 1 y 31'); readln(dia);
  while (dia > 31) or (dia < 1) do
  begin
    writeln('El dia debe estar entre 1 y 31');
    writeln('Ingrese el dia'); readln(dia);
  end;
  if (dia > 7) and (dia mod 7 <> 0) then
     dia:= dia mod 7
     else
       if dia mod 7 = 0 then
          dia:= 7;
  case dia of
       1: writeln('LUNES');
       2: writeln('MARTES');
       3: writeln('MIERCOLES');
       4: writeln('JUEVES');
       5: writeln('VIERNES');
       6: writeln('SABADO');
       7: writeln('DOMINGO');
  end;
  writeln('Desea continuar? S/N'); readln(resp);
  resp:= Upcase(resp);
  until resp = 'N';
end.

