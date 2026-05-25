unit JsonService;

interface

uses
  System.SysUtils,
  System.Classes,
  Escolhas,
  System.JSON;

type
  TJsonService = class
    public
    class procedure SalvarJSON(
      Rodada: integer;
      EscolhaBOT: string;
      EscolhaPlayer: string;
      Vencedor: string
    );
  end;

implementation

  class procedure TJsonService.SalvarJSON(Rodada: integer;
      EscolhaBOT: string;
      EscolhaPlayer: string;
      Vencedor: string
    );
    var
      Json: TJSONObject;
      Lista: TStringList;
    begin
      Json:= TJSONObject.Create;

      try
        Json.AddPair('rodada: ': TJsonService.VerRodada);
        Json.AddPair('Escolha do Jogador: ': EscolhaPlayer);
        Json.AddPair('Escolha do Bot: ': EscolhaBOT);
        Json.AddPair('Vencedor: ': Vencedor);

        Lista := TStringList.Create;

        try
          Lista.Text:= Json.ToJSON;
          Lista.SaveToFile('C:\Users\Victor\Desktop\JsonDelphi\src\Data\Partida.json')
        finally
           Lista.Free;
        end;
      finally
        Json.Free;
      end;
    end;

end.
