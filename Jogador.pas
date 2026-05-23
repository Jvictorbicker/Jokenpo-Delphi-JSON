unit Jogador;

interface

Type
  TJogador = class
  public function Escolha : Integer;
  end;
implementation

uses
  System.SysUtils;

function TJogador.Escolha : Integer;
var
  escolha: Integer;
     begin
       Repeat
       
         Writeln('--------------------');
         Writeln('[1] Pedra');
         Writeln('[2] Papel');
         Writeln('[3] Tesoura');
         Writeln('[4] Sair');
         Writeln('--------------------');

         Writeln('Digite sua opcao: ');
         ReadLn(escolha);

         if (escolha >= 1) and (escolha <=4) then
         begin
           Result:= escolha;
           Exit;
         end
         else
          Writeln('Opcão invalida!');
       Until False;

     end;
end.

