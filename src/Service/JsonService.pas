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

    public class function CarregarJSON(Rodada: integer) : TEscolhas;
  end;

implementation

  class procedure TJsonService.SalvarJSON(
      Rodada: integer;
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

          Lista := TStringList.Create;

          try
            if FileExists(caminho) then
              begin
                Lista.LoadFromFile(caminho);

                Json:= TJSONObject.ParseJSONValue(Lista.Text) as TJSONArray;
              end
            else
              begin
                Json:= TJSONArray.Create;
              end;

              NumeroRodada := Json.Count + 1;

              JsonRodada:= TJSONObject.Create;

              JsonRodada.AddPair('Rodada', TJSONNumber.Create(NumeroRodada));
              JsonRodada.AddPair('Escolha do Jogador', EscolhaPlayer);
              JsonRodada.AddPair('Escolha do Bot', EscolhaBOT);
              JsonRodada.AddPair('Vencedor', Vencedor);

              Json.AddElement(JsonRodada);

              Lista.Text := Json.ToJSON;

              Lista.SaveToFile(caminho);

          finally
                Lista.Free;
                Json.Free;
          end;
    end;

    class function TJsonService.CarregarJSON(Rodada: integer) : TEscolhas;
    var
      Lista: TStringList;
      Json: TJSONArray;
      JsonRodada: TJSONObject;
      i: integer;

    begin
      Result := nil;

      Lista := TStringList.Create;

      try
        Lista.LoadFromFile('C:\Users\Victor\Desktop\JsonDelphi\src\Data\Partida.json');

        Json := TJSONObject.ParseJSONValue(lista.text) as TJSONArray;

        try
          for I := 0 to Json.Count - 1 do
          begin
            JsonRodada := Json.Items[I] as TJSONObject;

            if JsonRodada.GetValue<Integer>('Rodada') = Rodada then
              begin
                Result := TEscolhas.Create;

                Result.Rodada :=
                  JsonRodada.GetValue<Integer>('Rodada');

                Result.EscolhaPlayer :=
                  JsonRodada.GetValue<string>('Escolha do Jogador');

                Result.EscolhaBOT :=
                  JsonRodada.GetValue<string>('Escolha do Bot');

                Result.Vencedor :=
                  JsonRodada.GetValue<string>('Vencedor');

                Break;
              end;

          end;

        finally
          Json.Free;
        end;

      finally
        Lista.Free;
      end;
    end;

end.
