unit Bot;

interface

  Type
    TBot = class
      public function Escolha: Integer;
    end;

implementation

uses
  System.SysUtils;

function TBOT.Escolha: Integer;
var
  escolha: Integer;
  begin
    Randomize;

    escolha:= random(3) + 1;

    Result:= escolha;
  end;

end.
