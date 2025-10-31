class Criatura {
  constructor(nome, perigosa) {
    this.nome = nome;
    this.perigosa = perigosa;
  }
}

class Diario {
  #autorSecreto;

  constructor(autor) {
    this.#autorSecreto = autor;
    this.enigmas = new Map();
    this.criaturasAvisitadas = [];
  }

  adicionarEnigma(num, enigma) {
    this.enigmas.set(num, enigma);
  }

  decodificar(chave, num) {
    if (chave !== this.#autorSecreto) {
      return "Acesso negado! Chave incorreta.";
    }

    if (!this.enigmas.has(num)) {
      return "Enigma inexistente!";
    }

    const enigma = this.enigmas.get(num);
    return `Enigma #${num} decodificado: ${enigma}`;
  }
}

class Personagem {
  constructor(nome, idade) {
    this.nome = nome;
    this.idade = idade;
  }
}

class Protagonista extends Personagem {
  constructor(nome, idade, autorDiario) {
    super(nome, idade);
    this.diario = new Diario(autorDiario);
  }
}

class CabanaMisterio {
  constructor(diario) {
    this.diario = diario;
    this.visitantes = [];
  }

  adicionarFuncionario(personagem) {
    if (!(personagem instanceof Personagem)) {
      throw new Error("Apenas instâncias de Personagem podem ser adicionadas!");
    }
    this.visitantes.push(personagem);
  }

  listarFuncionarios() {
    return this.visitantes;
  }
}

const dipper = new Protagonista("Dipper", 12, "StanleyPines");

dipper.diario.adicionarEnigma(1, "A criatura da floresta aparece ao entardecer.");
dipper.diario.adicionarEnigma(2, "O portal precisa de 6 símbolos.");

const gnomo = new Criatura("Gnomo", false);
const bill = new Criatura("Bill Cipher", true);

dipper.diario.criaturasAvisitadas.push(gnomo, bill);

const cabana = new CabanaMisterio(dipper.diario);

const soose = new Personagem("Soos", 22);
const wendy = new Personagem("Wendy", 17);

cabana.adicionarFuncionario(soose);
cabana.adicionarFuncionario(wendy);

console.log("\n=== Decodificação de Enigmas ===");
console.log(dipper.diario.decodificar("StanleyPines", 1));
console.log(dipper.diario.decodificar("errado", 1));
console.log("\n=== Funcionários da Cabana Mistério ===");
cabana.listarFuncionarios().forEach(f => console.log(`${f.nome}, ${f.idade} anos`));
