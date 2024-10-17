{ authentication.pas }

var
  User: String;
  Password: String;

procedure Login;
var
  InputUser: String;
  InputPassword: String;
begin
  Write('Username: ');
  ReadLn(InputUser);
  Write('Password: ');
  ReadLn(InputPassword);
  
  if (InputUser = User) and (InputPassword = Password) then
    WriteLn('Login successful')
  else
    WriteLn('Invalid credentials');
end;
