program Ej6;
var
  l1,l2,l3: char;
begin
  writeln('Ingrese 3 letras'); readln(l1,l2,l3);
  if (l1<l2) and (l1<l3) and (l2<l3) then  {abc}
     writeln('',l1,l2,l3)
     else
       if (l2<l1) and (l2<l3) and (l1<l3) then {bac}
          writeln('',l2,l1,l3)
          else
            if (l3<l1) and (l3<l2) and (l2<l1) then  {cba}
               writeln('',l3,l2,l1)
               else
                 if (l1<l2) and (l1<l3) and (l3<l2) then {acb}
                    writeln('',l1,l3,l2)
                    else
                      if (l3<l2) and (l3<l1) and (l1<l2) then {bca}
                         writeln('',l3,l1,l2)
                         else                     {cab}
                           writeln('',l2,l3,l1);
  readln();
end.

