{ cli.pas }

procedure ExecuteCommand(Command: String);
begin
  { Parse and execute command }
end;

procedure CommandLineInterface;
var
  Command: String;
begin
  while True do
  begin
    Write('> ');
    ReadLn(Command);
    ExecuteCommand(Command);
  end;
end;
