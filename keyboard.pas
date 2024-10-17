{ keyboard.pas }

uses
  crt, dos;

procedure KeyboardHandler; interrupt;
var
  scancode: Byte;
begin
  scancode := Port[$60]; { Membaca scancode dari port keyboard }

  { Lakukan sesuatu dengan scancode, misalnya menampilkan karakter }
  case scancode of
    $02: Write('1');
    $03: Write('2');
    { Tambahkan kode lainnya untuk menangani scancode }
  end;

  Port[$20] := $20; { Kirim end of interrupt (EOI) ke pengendali interrupt }
end;

begin
  { Pasang interrupt handler baru untuk keyboard }
  SetIntVec($09, @KeyboardHandler);

  { Tunggu input }
  while True do;
end.
