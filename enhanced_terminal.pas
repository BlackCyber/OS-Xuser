{ enhanced_terminal.pas }

const
  MAX_HISTORY = 10;

var
  CommandHistory: array[0..MAX_HISTORY-1] of String;
  HistoryIndex: Integer = 0;

procedure AddToHistory(Command: String);
begin
  CommandHistory[HistoryIndex mod MAX_HISTORY] := Command;
  HistoryIndex := (HistoryIndex + 1) mod MAX_HISTORY;
end;

procedure ShowHistory;
var
  I: Integer;
begin
  for I := 0 to MAX_HISTORY-1 do
    if CommandHistory[I] <> '' then
      WriteLn(I + 1, ': ', CommandHistory[I]);
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
    AddToHistory(Command);
    if Command = 'exit' then
      Break
    else if Command = 'history' then
      ShowHistory
    else
      ExecuteCommand(Command);
  end;
end;
