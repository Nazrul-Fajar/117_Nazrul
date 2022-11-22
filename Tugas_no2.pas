
Program Penjumlahan_Matriks;

Uses crt;

Type 
  larik = array[1..5,1..5] Of integer;

Var 
  matriks1,matriks2,hasil : larik;
  i,j,k1,b1,k2,b2: integer;
Begin
  clrscr;
  write('Masukkan batas baris Matriks ke-1(Maks 5): ');
  readln(b1);
  write('Masukkan batas kolom Matriks ke-1(Maks 5): ');
  readln(k1);
  write('Masukkan batas baris Matriks ke-2(Maks 5): ');
  readln(b2);
  write('Masukkan batas kolom Matriks ke-2(Maks 5:) ');
  readln(k2);
  clrscr;
  If (b1<=5) And (k1<=5) And (b1=b2) And (k1=k2) Then
    Begin
      For i:= 1 To b1 Do
        Begin
          For j:= 1 To k1 Do
            Begin
              write('Masukkan Elemen Matriks ke-1(',i,',',j,'): ');
              readln(matriks1[i,j]);
            End;
        End;
      writeln;
      For i:= 1 To b2 Do
        Begin
          For j:= 1 To k2 Do
            Begin
              write('Masukkan Elemen Matriks ke-2(',i,',',j,'): ');
              readln(matriks2[i,j]);
            End;
        End;
      clrscr;
      writeln('Program Penjumlahan Matriks');
      writeln;
      writeln('Matriks Pertama');
      For i:= 1 To b1 Do
        Begin
          For j:= 1 To k1 Do
            Begin
              write(matriks1[i,j],' ');
            End;
          writeln;
        End;
      writeln;
      writeln('Matriks Kedua');
      For i:= 1 To b2 Do
        Begin
          For j:= 1 To k2 Do
            Begin
              write(matriks2[i,j],' ');
            End;
          writeln;
        End;
      writeln;
    {proses penjumlahan}
      For i:=1 To b1 Do
        Begin
          For j:=1 To k2 Do
            Begin
              hasil[i,j] := matriks1[i,j]+matriks2[i,j];
            End;
        End;
      writeln('Hasil Penjumlahan');
      For i:=1 To b1 Do
        Begin
          For j:=1 To k2 Do
            Begin
              write(hasil[i,j],' ');
            End;
          writeln;
        End;
    End
  Else If (b1>5)Or(k1>5) Then
         Begin
           write('Jumlah Baris dan Kolom maksimal 5');
         End
  Else
    Begin
      write('Matriks tidak dapat dijumlahkan karena ordo yang berbeda');
    End;
  readln;
End.
