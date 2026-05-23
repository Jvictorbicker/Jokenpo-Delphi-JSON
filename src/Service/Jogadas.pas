unit Jogadas;

interface

uses Escolhas;

procedure Win(jogadaJogador: TEscolhas; jogadaBot: TEscolhas);

implementation

uses
  Jogador,
  Bot;

  var
  jogadorObj: TJogador;
  botObj: TBOT;

  jogadaJogador: TEscolhas;
  jogadaBOT: TEscolhas;

  procedure  win(jogadaJogador: TEscolhas; jogadaBot: TEscolhas);

begin
  if jogadaJogador = jogadaBot then
    Writeln('Empate!')
  else if
    ((jogadaJogador = Pedra)   and (jogadaBot = Tesoura)) or
    ((jogadaJogador = Papel)   and (jogadaBot = Pedra))   or
    ((jogadaJogador = Tesoura) and (jogadaBot = Papel))
  then
    Writeln('Jogador venceu!')
  else
    Writeln('Bot venceu!');

  Readln;
end;
end.
