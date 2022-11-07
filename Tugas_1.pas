program Tugas_4_2;
uses crt;
var
  mn : integer;
const
  hr1 = 10000;
  hr2 = 13000;
begin
 clrscr;
   writeln('=====================================');
   writeln('         Kantin Fasilkom-TI         ');
   writeln('=====================================');
   writeln('Kode Daftar Menu:       Daftar Harga: ');
   writeln('=====================================');
   writeln('1.   Nasi Goreng     Rp10000.00    ');
   writeln('2.   Ayam Geprek     Rp13000.00    ');
   writeln('3.   Ayam Penyet     Rp13000.00    ');
   writeln('4.   Ayam Goreng     Rp13000.00    ');
   writeln('5.   Ayam Bakar      Rp13000.00    ');
   writeln('====================================');
   writeln;
   write('Masukkan Kode Menu Yang Di Inginkan (1..5): ');
   readln(mn);
   writeln;
      case (mn) of
         1: writeln('Anda memilih menu Nasi Goreng dengan harga Rp',hr1,'.00');
         2: writeln('Anda memilih menu Ayam Geprek dengan harga Rp',hr2,'.00');
         3: writeln('Anda memilih menu Ayam Penyet dengan harga RP',hr2,'.00');
         4: writeln('Anda memilih menu Ayam Goreng dengan harga Rp',hr2,'.00');
         5: writeln('Anda memilih menu Ayam Bakar dengan harga Rp',hr2,'.00');
      else
         begin
            writeln('Pilihan tidak ada pada menu');
         end;
      end;

      readln;
end.
