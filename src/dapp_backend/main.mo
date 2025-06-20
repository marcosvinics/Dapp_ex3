import Buffer "mo:base/Buffer";
import Debug "mo:base/Debug";

actor {

  // Declare uma variável do tipo Buffer chamada pessoas que irá armazenar itens do tipo Text.
  var pessoas : Buffer.Buffer<Text> = Buffer.Buffer<Text>(0);

  // Função para Adicionar Pessoas
  public func adicionarPessoas(nomePessoa : Text) : async () {
    pessoas.add(nomePessoa);
    Debug.print("Pessoa adicionada: " # nomePessoa);
  };

  // Função para Listar Pessoas
  public func listarPessoas() : async [Text] {
    return Buffer.toArray(pessoas);
  };

};
