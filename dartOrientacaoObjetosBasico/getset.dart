class Pessoa {
  
  String nome;
  int _idade;
  double _altura;
  
  /*
  Pessoa(String nome, int idade, double altura) {
    this.nome = nome;
    this.idade = idade;
    this.altura = altura;
  }
  */
  
  Pessoa(this.nome, this._idade, this._altura);
  
  Pessoa.nascer(this.nome, this._altura) {
    _idade = 0;
    print("$nome nasceu!");
    dormir();
  }
  
  void dormir() {
    print("$nome está dormindo!");
  }
  
  void aniver() {
    _idade++;
  }
  
  /*
  int get idade{
	return _idade;
  }
  */
  
  int get idade => _idade; // simplificando o GET idade
  
  /*
  double get altura{
    return _altura;
  }
  */
  
  double get altura => _altura;// simplificando o GET altura
  
  set altura(double altura){
    if(altura > 0.0 && altura < 2.50){
      _altura = altura;
    }
  }
   
}

void main() {
  
  String algumaCoisa = "valor";
  
  Pessoa pessoa1 = Pessoa("João", 30, 1.80);
  
  Pessoa pessoa2 = Pessoa("Thiago", 28, 1.90);
  
  print(pessoa1.nome);
  print(pessoa2.nome);
  
  print(pessoa1.idade);
  pessoa1.aniver();
  print(pessoa1.idade);
  
  pessoa2.dormir();
  
  Pessoa bebe = Pessoa.nascer("Enzo", 0.30);
  print(bebe.nome);
  print(bebe.idade);
  
  bebe.altura = 3.0;
  print(bebe.altura);
  
  bebe.altura = 0.80;
  print(bebe.altura);
  
}


