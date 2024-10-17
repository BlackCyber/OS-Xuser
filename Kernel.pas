{ kernel.pas }

program Kernel;

{$MODE FPC}
{$ASMMODE INTEL}
{$GOTO ON}

uses
  crt;

const
  VGA_MEMORY = $B8000;
  WHITE_ON_BLACK = $0F;

type
  TVideoMemory = array[0..1999] of Word;

procedure WriteChar(X, Y: Integer; C: Char; Color: Byte);
begin
  TVideoMemory(Pointer(VGA_MEMORY)^)[Y * 80 + X] := Ord(C) or (Color shl 8);
end;

procedure PrintString(X, Y: Integer; Str: String);
var
  I: Integer;
begin
  for I := 1 to Length(Str) do
    WriteChar(X + I - 1, Y, Str[I], WHITE_ON_BLACK);
end;

begin
  { Clear screen }
  clrscr;

  { Print message }
  PrintString(0, 0, 'Hello from Pascal Kernel!');

  { Infinite loop to halt the kernel }
  while True do;
end.
