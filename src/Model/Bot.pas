unit Bot;

interface

uses Escolhas;

  Type
    TBot = class
      public function Escolha: TEscolhas;
    end;

implementation

uses
  System.SysUtils;

function TBOT.Escolha: TEscolhas;

  begin
    Result:= TEscolhas(random(3));
  end;

end.
