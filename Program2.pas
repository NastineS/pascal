program a;

function toHexDigit(n : integer) :char;
var k : integer;
begin
if (n in [0..9])
then
  k:= ord('0') + n
 else
  k:= ord('A') + n - 10;
toHexDigit:= chr(k);
end;

function d2h(n :integer) : string;
var s : string;
    x : integer;
begin
 s := '';
 while n > 0 do
   begin
   x:= n mod 16;
   n:= n div 16;
   s:= s + toHexDigit(x);
   end;
   
  d2h := ReverseString(s);
end;

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

for i := 1 to 15 do
 begin
  for j := 1 to 15 do
  write(d2h(i*j) : 3);
  writeln();
 end;
  
    
end.