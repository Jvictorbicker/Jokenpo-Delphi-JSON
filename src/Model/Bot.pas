unit Bot;

interface

uses Escolhas;

  Type
    TBot = class
      public function Escolha: TEscolha;
    end;

implementation

uses
  System.SysUtils;

function TBOT.Escolha: TEscolha;

  begin
    Result:= TEscolha(random(3));
  end;

end.
