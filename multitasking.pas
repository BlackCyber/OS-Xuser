{ multitasking.pas }

type
  TTask = record
    ESP: Pointer;
    EIP: Pointer;
    State: Byte;
  end;

var
  TaskList: array of TTask;
  CurrentTask: Integer;

procedure SwitchTask(NewTask: Integer);
begin
  { Save current task state }
  TaskList[CurrentTask].ESP := GetESP;
  TaskList[CurrentTask].EIP := GetEIP;
  
  { Load new task state }
  SetESP(TaskList[NewTask].ESP);
  SetEIP(TaskList[NewTask].EIP);
  
  CurrentTask := NewTask;
end;

procedure Scheduler;
begin
  { Simple round-robin scheduling }
  while True do
  begin
    SwitchTask((CurrentTask + 1) mod Length(TaskList));
  end;
end;
