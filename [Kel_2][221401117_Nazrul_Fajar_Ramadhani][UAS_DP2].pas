
Uses crt;

Type menu = Record
  kma,kto,kmi: array[1..6] Of integer;
  nmk,nto,nmi: array[1..12] Of string;
  kmah,ktoh,kmih: array[1..10] Of integer;
  jumlah : array[1..3] Of integer;
  total : real;
End;

Var pilihan : menu;
Procedure makanan;

Label kode;

Var i,j: integer;
  a: string;
Begin
  clrscr;
  writeln('------------------------------------');
  writeln('|    Selamat Datang Di Hi.Spicy    |');
  writeln('------------------------------------');
  writeln('| Kode |       Menu Makanan        |');
  writeln('------------------------------------');
  writeln('| 1.   |  Mie Jumbo     Rp8000.00  |');
  writeln('| 2.   |  Mie Biasa     Rp7000.00  |');
  writeln('------------------------------------');
  write('Apakah Anda Ingin memesan Makanan?(Y/T): ');
  readln(a);
  If a = 'y' Then
    Begin
      write('Masukkan Jumlah Pesanan pada menu Makanan: ');
      readln(j);
      For i:= 1 To j Do
        Begin
          kode:
                write('Masukkan Kode Makanan: ');
          readln(pilihan.kma[i]);
          If (pilihan.kma[i]=1) Then
            Begin
              pilihan.nmk[i] := 'Mie Jumbo';
              pilihan.kmah[i] := 8000;
            End
          Else If (pilihan.kma[i]=2) Then
                 Begin
                   pilihan.nmk[i] := 'Mie Biasa';
                   pilihan.kmah[i] := 7000;
                 End
          Else If (pilihan.kma[i]<>1) And (pilihan.kma[i]<>2) Then
                 Begin
                   writeln('Masukkan Kode yang Benar!');
                   goto kode;
                 End;
          writeln('Anda Memesan ',pilihan.nmk[i]);
        End;
      clrscr;
      writeln('Pesanan Anda');
      writeln('------------');
      For i:= 1 To j Do
        writeln(pilihan.nmk[i],' dengan harga Rp',pilihan.kmah[i],'.00');
      pilihan.jumlah[1] := j;
      readkey;
    End;
End;


Procedure toping;

Label kode;

Var i,j: integer;
  a: string;
Begin
  clrscr;
  writeln('------------------------------------');
  writeln('|    Selamat Datang Di Hi.Spicy    |');
  writeln('------------------------------------');
  writeln('| Kode |       Menu Toping         |');
  writeln('------------------------------------');
  writeln('| 1.   |  Telur         Rp2000.00  |');
  writeln('| 2.   |  Sosis         Rp2000.00  |');
  writeln('| 3.   |  Nuget         Rp2000.00  |');
  writeln('| 4.   |  Komplit       Rp6000.00  |');
  writeln('------------------------------------');
  write('Apakah Anda ingin Memesan Toping?(Y/T): ');
  readln(a);
  If a ='y' Then
    Begin
      write('Masukkan Jumlah Pesanan pada menu Toping: ');
      readln(j);
      For i:= 1 To j Do
        Begin
          kode:
                write('Masukkan Kode Toping: ');
          readln(pilihan.kto[i]);
          If (pilihan.kto[i]=1) Then
            Begin
              pilihan.nto[i] := 'Telur';
              pilihan.ktoh[i] := 2000;
            End
          Else If (pilihan.kto[i]=2) Then
                 Begin
                   pilihan.nto[i] := 'Sosis';
                   pilihan.ktoh[i] := 2000;
                 End
          Else If (pilihan.kto[i]=3) Then
                 Begin
                   pilihan.nto[i] := 'Nuget';
                   pilihan.ktoh[i] := 2000;
                 End
          Else If (pilihan.kto[i]=4) Then
                 Begin
                   pilihan.nto[i] := 'Komplit';
                   pilihan.ktoh[i] := 6000;
                 End
          Else If (pilihan.kto[i]<>1) And (pilihan.kto[i]<>2) And (pilihan.kto
                  [i
                  ]<>3) And (pilihan.kto[i]<>4) Then
                 Begin
                   writeln('Masukkan Kode yang Benar!');
                   goto kode;
                 End;
          writeln('Anda Memesan ',pilihan.nto[i]);
        End;
      clrscr;
      writeln('Pesanan Anda');
      writeln('------------');
      For i:= 1 To j Do
        writeln(pilihan.nto[i],' dengan harga Rp',pilihan.ktoh[i],'.00');
      pilihan.jumlah[2] := j;
      readkey;
    End;
End;
Procedure minuman;

Label kode;

Var i,j: integer;
  a: string;
Begin
  clrscr;
  writeln('------------------------------------');
  writeln('|    Selamat Datang Di Hi.Spicy    |');
  writeln('------------------------------------');
  writeln('| Kode |       Menu Minuman        |');
  writeln('------------------------------------');
  writeln('| 1.   |  Mandi         Rp5000.00  |');
  writeln('| 2.   |  Manpa         Rp4000.00  |');
  writeln('| 3.   |  Susu Putih D  Rp7000.00  |');
  writeln('| 4.   |  Susu Putih P  Rp6000.00  |');
  writeln('| 5.   |  Milo D        Rp8000.00  |');
  writeln('| 6.   |  Milo P        Rp7000.00  |');
  writeln('------------------------------------');
  write('Apakah Ada Ingin Memesan Minuman ?(Y/T): ');
  readln(a);
  If a='y' Then
    Begin
      write('Masukkan Jumlah Pesanan pada menu Minuman: ');
      readln(j);
      For i:= 1 To j Do
        Begin
          kode:
                write('Masukkan Kode Minuman: ');
          readln(pilihan.kmi[i]);
          If (pilihan.kmi[i]=1) Then
            Begin
              pilihan.nmi[i] := 'Mandi';
              pilihan.kmih[i] := 5000;
            End
          Else If (pilihan.kmi[i]=2) Then
                 Begin
                   pilihan.nmi[i] := 'Manpa';
                   pilihan.kmih[i] := 4000;
                 End
          Else If (pilihan.kmi[i]=3) Then
                 Begin
                   pilihan.nmi[i] := 'Susu Putih D';
                   pilihan.kmih[i] := 7000;
                 End
          Else If (pilihan.kmi[i]=4) Then
                 Begin
                   pilihan.nmi[i] := 'Susu Putih P';
                   pilihan.kmih[i] := 6000;
                 End
          Else If (pilihan.kmi[i]=5) Then
                 Begin
                   pilihan.nmi[i] := 'Milo D';
                   pilihan.kmih[i] := 8000;
                 End
          Else If (pilihan.kmi[i]=6) Then
                 Begin
                   pilihan.nmi[i] := 'Milo P';
                   pilihan.kmih[i] := 7000;
                 End
          Else If (pilihan.kmi[i]<>1) And (pilihan.kmi[i]<>2) And (pilihan.kmi
                  [i
                  ]<>3) And
                  (pilihan.kmi[i]<>4) And (pilihan.kmi[i]<>5) And (pilihan.kmi
                  [i
                  ]<>6) Then
                 Begin
                   writeln('Masukkan Kode yang Benar!');
                   goto kode;
                 End;
          writeln('Anda Memesan ',pilihan.nmi[i]);
        End;
      clrscr;
      writeln('Pesanan Anda');
      writeln('------------');
      For i:= 1 To j Do
        writeln(pilihan.nmi[i],' dengan harga Rp',pilihan.kmih[i],'.00');
      pilihan.jumlah[3] := j;
      readkey;
    End;
End;
Procedure hasil;

Var i: integer;
  u,kembali: real;
Begin
  clrscr;
  writeln('Seluruh Pesanan Anda');
  writeln('---------------------------------------------');
  pilihan.total := 0;
  For i:= 1 To pilihan.jumlah[1] Do
    Begin
      writeln(pilihan.nmk[i],' dengan harga Rp',pilihan.kmah[i],'.00');
      pilihan.total := pilihan.total+pilihan.kmah[i];
    End;
  For i:=1 To pilihan.jumlah[2] Do
    Begin
      writeln(pilihan.nto[i],' dengan harga Rp',pilihan.ktoh[i],'.00');
      pilihan.total := pilihan.total+pilihan.ktoh[i];
    End;
  For i:=1 To pilihan.jumlah[3] Do
    Begin
      writeln(pilihan.nmi[i],' dengan harga Rp',pilihan.kmih[i],'.00');
      pilihan.total := pilihan.total+pilihan.kmih[i];
    End;
  writeln('---------------------------------------------');
  writeln('Total Biaya Pesanan Anda Adalah Rp',pilihan.total:0:2);
  write('Total Pembayaran : ');
  readln(u);
  If u>(pilihan.total) Then
    Begin
      kembali := u-pilihan.total;
      writeln('Total Kembalian  : ',kembali:0:2);
    End
  Else
    Begin
      writeln('Uang Anda Kurang!');
    End;
  writeln('---------------------------------------------');
End;

Label ulang;

Var 
  a: char;
Begin
  ulang:
         clrscr;
  writeln('------------------------------------');
  writeln('|    Selamat Datang Di Hi.Spicy    |');
  writeln('------------------------------------');
  writeln('| Kode |           Menu            |');
  writeln('------------------------------------');
  writeln('| 1.   |  Makanan                  |');
  writeln('| 2.   |  Toping                   |');
  writeln('| 3.   |  Minuman                  |');
  writeln('------------------------------------');
  write('Tekan Tombol Apa Saja');
  readkey;
  makanan;
  toping;
  minuman;
  hasil;
  write('Apakah Anda Ingin Memesan Lagi?(Y/T)');
  readln(a);
  If a ='y' Then
    Begin
      goto ulang;
    End
  Else
    Begin
      writeln('Terimakasih Karna Sudah Memesan');
      writeln('---------------------------------------------');
      readkey;
    End;
End.
