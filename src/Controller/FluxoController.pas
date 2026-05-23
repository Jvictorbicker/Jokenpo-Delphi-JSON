unit FluxoController;

interface

procedure Start;

implementation

uses
  Jogadas,
  Jogador,
  Bot,
  Escolhas,
  System.SysUtils;

procedure Start;
var
  jogador: TJogador;
  escolha: TEscolhas;

begin
  jogador := TJogador.Create;

  escolha:= jogador.Escolha;

  repeat
      escolha:= jogador.Escolha;

      win;

  until escolha = Sair;

  jogador.Free;
end;

end.
