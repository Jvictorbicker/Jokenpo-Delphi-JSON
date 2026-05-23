unit Jogadas;

interface

procedure win;

implementation

uses
  Escolhas,
  Jogador,
  Bot;

  var
  jogadorObj: TJogador;
  botObj: TBOT;

  jogadaJogador: TEscolhas;
  jogadaBOT: TEscolhas;

  procedure  win;

  begin
    if (JogadaJogador = Pedra) and (JogadaBOT = Tesoura) then
        begin
          Writeln('Jogador venceu');
        end
    else if (JogadaJogador = Papel) and (JogadaBOT = Pedra) then
        begin
          Writeln('Jogador venceu');
        end
    else if (JogadaJogador = Tesoura) and (JogadaBOT = Papel) then
        begin
          Writeln('Jogador venceu');
        end
    else
    begin
      Writeln('Bot Venceu');
    end;

    Readln;
  end;

end.
