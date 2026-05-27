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
  bot: TBOT;
  escolha: TEscolha;
  escolhaBot: TEscolha;

begin
  Randomize;

  jogador := TJogador.Create;
  bot:= TBOT.Create;

  repeat
      escolha:= jogador.Escolha;
      if escolha <> Sair then
        begin
          escolhaBot := bot.Escolha;
          Win(escolha, escolhabot);

          jogador.Free;
          bot.Free;
        end;

  until escolha = Sair;

  jogador.Free;
end;

end.
