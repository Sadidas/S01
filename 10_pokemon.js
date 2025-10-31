class Pokemon {
  #vida;

  constructor(nome, tipo, vidaInicial) {
    this.nome = nome;
    this.tipo = tipo;
    this.#vida = vidaInicial;
  }

  getVida() {
    return this.#vida;
  }

  receberDano(dano) {
    this.#vida -= dano;
    if (this.#vida < 0) this.#vida = 0;
    console.log(`${this.nome} recebeu ${dano} de dano! Vida atual: ${this.#vida}`);
  }

  atacar(alvo) {
    console.log(`${this.nome} realizou um ataque genérico em ${alvo.nome}!`);
    alvo.receberDano(10);
  }
}

class PokemonFogo extends Pokemon {
  constructor(nome, vidaInicial, bonusAtaque) {
    super(nome, 'Fogo', vidaInicial);
    this.bonusAtaque = bonusAtaque;
  }

  atacar(alvo) {
    const dano = 15 + this.bonusAtaque;
    console.log(`${this.nome} lançou um ataque de fogo em ${alvo.nome}, causando ${dano} de dano! 🔥`);
    alvo.receberDano(dano);
  }
}

class PokemonAgua extends Pokemon {
  #curaBase;

  constructor(nome, vidaInicial, curaBase) {
    super(nome, 'Água', vidaInicial);
    this.#curaBase = curaBase;
  }

  atacar(alvo) {
    console.log(`${this.nome} lançou um jato d'água em ${alvo.nome}, causando 12 de dano e se curando! 💧`);
    alvo.receberDano(12);
    this.#curar();
  }

  #curar() {
    console.log(`${this.nome} recuperou ${this.#curaBase} de vida!`);
    const novaVida = this.getVida() + this.#curaBase;
    Object.defineProperty(this, '#vida', { value: novaVida });
  }
}

const charmander = new PokemonFogo("Charmander", 100, 5);
const squirtle = new PokemonAgua("Squirtle", 100, 8);

console.log("\n=== BATALHA COMEÇA ===");
charmander.atacar(squirtle);
squirtle.atacar(charmander);

console.log("\nVida final:");
console.log(`${charmander.nome}: ${charmander.getVida()} HP`);
console.log(`${squirtle.nome}: ${squirtle.getVida()} HP`);
