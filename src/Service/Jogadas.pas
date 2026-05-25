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

  vencedor: string;

  procedure  win(jogadaJogador: TEscolhas; jogadaBot: TEscolhas);

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
