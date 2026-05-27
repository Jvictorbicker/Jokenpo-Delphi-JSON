unit Jogadas;

interface

uses Escolhas;

procedure Win(jogadaJogador: TEscolha; jogadaBot: TEscolha);

implementation

uses
  Jogador,
  Bot;

  var
  jogadorObj: TJogador;
  botObj: TBOT;

  jogadaJogador: TEscolha;
  jogadaBOT: TEscolha;

  vencedor: string;

  procedure  win(jogadaJogador: TEscolha; jogadaBot: TEscolha);

begin
  if jogadaJogador = jogadaBot then
  begin
     Writeln('Empate!')
  end
  else if (jogadaJogador = Pedra)  and (jogadaBot = Tesoura) then
  begin
     writeln('Jogador Venceu!');
    vencedor:= 'Jogador';
  end

  else if (jogadaJogador = Papel)  and (jogadaBot = Pedra) then
  begin
    writeln('Jogador Venceu!');
    vencedor:= 'Jogador';
  end

  else if (jogadaJogador = Tesoura) and (jogadaBot = papel) then
  begin
    writeln('Jogador Venceu!');
    vencedor:= 'Jogador';
  end

  else
    Writeln('Bot venceu!');
    vencedor:= 'BOT';

  Readln;
end;
end.
