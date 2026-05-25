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

    class function CarregarJSON(Rodada: integer) : string;
  end;

implementation

  class procedure TJsonService.SalvarJSON(Rodada: integer;
      EscolhaBOT: string;
      EscolhaPlayer: string;
      Vencedor: string
    );

      var
        Lista: TStringList;
        Json: TJSONArray;
        JsonRodada: TJSONObject;
        Caminho: string;
        NumeroRodada: Integer;

        begin
          caminho :='C:\Users\Victor\Desktop\JsonDelphi\src\Data\Partida.json';

          Lista.TStringList.Create;

          try
            if FileExists(caminho) then
              begin
                Lista.LoadFromFile(caminho);

                Json:= TJSONObject.ParseJSONValue(Lista.Text) as JSONArray;
              end
            else
              begin
                Json:= TJSONArray.Create;
              end;

              NumeroRodada := JsonArray.Count + 1;

              JsonRodada:= TJSONObject.Create;

              JsonRodada.AddPair('Rodada', TJSONNumber.Create(NumeroRodada));
              JsonRodada.AddPair('Escolha do jogador', EscolhaPlayer);
              JsonRodada.AddPair('Escolha do bot', EscolhaBOT);
              JsonRodada.AddPair('Vencedor', Vencedor);

              JsonArray.AddElement(JsonRodada);

              Lista.Text := JsonArray.ToJSON;

              Lista.SaveToFile(caminho);

              JsonArray.Free;

              finally
                Lista.Free;
        end;
    end;

    class function TJsonService.CarregarJSON(Rodada: integer) : string;
    var
      Lista: TStringList;
      Json: TJSONArray;

    begin
      Result:= TRodada.Create;

      Lista := TStringList.Create;

      try
        Lista.LoadFromFile('C:\Users\Victor\Desktop\JsonDelphi\src\Data\Partida.json')

        Json := TJSONArray.ParseJSONValue(lista.text) as TJSONObject;

        try
          Result.Rodada := Json.GetValue<string>('Rodada');
          Result.EscolhaPlayer := Json.GetValue<string>('Escolha do Jogador');
          Result.EscolhaBOT := Json.GetValue<string>('Escolha do Bot');
          Result.Vencedor := Json.GetValue<string>('Vencedor');
          
        finally
           Json.Free;
        end;
      finally
        List.Free;
      end;
    end;
      

end.
