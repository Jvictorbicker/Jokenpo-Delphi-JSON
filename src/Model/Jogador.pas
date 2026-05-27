unit Jogador;

interface

uses
  Escolhas;

Type
  TJogador = class
  public function Escolha : TEscolha;
  end;

implementation

uses
  System.SysUtils;

function TJogador.Escolha : TEscolha;
var
  escolha: Integer;
     begin
         Writeln('--------------------');
         Writeln('[1] Pedra');
         Writeln('[2] Papel');
         Writeln('[3] Tesoura');
         Writeln('[4] Sair');
         Writeln('--------------------');

         Writeln('Digite sua opcao: ');
         ReadLn(escolha);

         case escolha of
         1: Result:= Pedra;
         2: Result:= Papel;
         3: Result:= Tesoura;
         end;
     end;
end.
