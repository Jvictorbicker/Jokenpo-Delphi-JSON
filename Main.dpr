program Main;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  FluxoController in 'src\Controller\FluxoController.pas',
  Bot in 'src\Model\Bot.pas',
  Jogador in 'src\Model\Jogador.pas',
  Jogadas in 'src\Service\Jogadas.pas',
  Escolhas in 'src\Model\Escolhas.pas',
  JsonService in 'src\Service\JsonService.pas';

begin
  Start;

  Readln;
end.
