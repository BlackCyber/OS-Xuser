{ mouse.pas }

procedure MouseHandler; interrupt;
begin
  { Handle mouse events }
end;

procedure InitializeMouseDriver;
begin
  SetIntVec($33, @MouseHandler);
end;
