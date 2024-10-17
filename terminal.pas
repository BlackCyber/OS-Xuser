{ terminal.pas }

uses
  crt;

procedure ExecuteCommand(Command: String);
begin
  { Implementasi perintah dasar, seperti menampilkan pesan atau mengakses file }
  if Command = 'cls' then
    clrscr
  else if Command = 'date' then
    WriteLn(Date)
  else
    WriteLn('Command not found: ', Command);
end;

procedure CommandLineInterface;
var
  Command: String;
begin
  clrscr;
  WriteLn('Welcome to Pascal OS Terminal');
  WriteLn('Type "help" for a list of commands');
  while True do
  begin
    Write('> ');
    ReadLn(Command);
    if Command = 'exit' then
      Break
    else
      ExecuteCommand(Command);
  end;
end;
