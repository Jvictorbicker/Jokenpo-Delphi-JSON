unit Escolhas;

interface

type
  TEscolha = (Pedra, Papel, Tesoura, Sair);

  TEscolhas = class
  public
    Rodada: Integer;
    EscolhaPlayer: string;
    EscolhaBOT: string;
    Vencedor: string;
  end;

implementation
end.
