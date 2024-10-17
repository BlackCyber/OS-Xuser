{ network.pas }

procedure InitializeNetworkDriver;
begin
  { Initialize network interface and protocols }
end;

procedure SendPacket(Packet: Pointer; Size: Integer);
begin
  { Send a network packet }
end;

procedure ReceivePacket(Buffer: Pointer; var Size: Integer);
begin
  { Receive a network packet }
end;
