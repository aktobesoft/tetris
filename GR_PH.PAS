program esep;
uses crt;
type typ=set of byte;
     mas=array [1..100] of byte;
var y,i,j,q,l:integer;f:text;g:typ;e,k:byte;a:array [1..8,1..8] of integer;b:mas;
procedure tek(k,T:integer;p:typ);
var r,i,s,po:integer;
begin
    if not (k in p) then begin
    if (T=Y) AND (a[k,e]=1) then begin p:=p+[k];b[t]:=k;writeln;writeln('Shikti: ');writeln;
    l:=1;
    for po:=1 to y do
    write(b[po],' ');write(b[1]);
    end else begin
    p:=p+[k]; b[t]:=k;
    s:=0; inc(t);
    for i:=1 to y do if (not (i in p)) and ( A[k,i]=1) then begin {p:=p+[i];}tek(i,t,p);end;end;end;
end;
begin
     assign(f,'t3.txt');
     reset(f);
     read(f,y,e);
     readln(f);
     CLRSCR; l:=0;
     for i:=1 to y do begin
     for j:=1 to y do
     read(f,a[i,j]);readln(f);end;
     close(f);g:=g+[e];b[1]:=e;
     FOR I:=1 TO Y DO IF (I<>E) AND (A[I,E]=1)THEN BEGIN q:=1;
     inc(q);b[q]:=i;tek(i,q,g);end;readln;
end.
