{ thread.pas }

type
  TThread = record
    TID: Integer;
    State: TProcessState;
    { Thread-specific data }
  end;

procedure CreateThread(var NewThread: TThread);
begin
  { Initialize new thread within a process }
end;

procedure TerminateThread(TID: Integer);
begin
  { Terminate the specified thread }
end;
