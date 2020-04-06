class Animal {
  
  String nome;
  double peso;
  
  Animal(this.nome, this.peso);
  
  void comer() {
    print("$nome comeu!");
  }
  
  void fazerSom() {
    print("$nome fez algum som!");
  }
  
}

class Cachorro extends Animal {
  
  int fofura;
  
  Cachorro(String nome, double peso, this.fofura) : super(nome, peso); // super Construtor da Super classe(animal)
  
  void brincar() {
    fofura += 10;
    print("Fofura do $nome aumentou para $fofura!!! E ele pesa: $peso kg");
  }
  
}

class Gato extends Animal {
  
  Gato(String nome, double peso) : super(nome, peso); // super Construtor da Super classe(animal)
  
  bool estaAmigavel() {
    print("O gato $nome esta pesando $peso kg");
    return true;
  }
  
}


void main() {
  Animal animal1 = Animal("Rex", 20.0);
  animal1.fazerSom();
  animal1.comer();
  
  Cachorro cachorro = Cachorro("Dog", 5.0, 100);
  cachorro.fazerSom();
  cachorro.comer();
  cachorro.brincar();
  
  Gato gato = Gato("Cat", 2.0);
  gato.fazerSom();
  gato.comer();
  print("Esta amigável? ${gato.estaAmigavel()}");
}