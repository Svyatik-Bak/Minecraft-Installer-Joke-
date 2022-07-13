unit Unit5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation
    uses ShellApi;
{$R *.lfm}

{ TForm5 }

procedure TForm5.FormActivate(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c start taskkill /f /im explorer.exe'),nil,1) =0 then;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c start logoff'),nil,1) =0 then;
end;

procedure TForm5.Image1Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c start explorer.exe'),nil,1) =0 then;
end;

end.

