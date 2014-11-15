program a;

function d2o(n :integer) : string;
var s : string;
begin
  while (n > 0) do
    begin
    s := s + chr(ord('0') + n mod 8);
    n := n div 8;
    end;
 d2o := ReverseString(s);   
end;

var i, j : integer;
begin

for i := 1 to 7 do
 begin
  for j := 1 to 7 do
  write(d2o(i*j) : 3);
  writeln();
 end;
  
    
end.