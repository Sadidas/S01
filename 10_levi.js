class IExplorador {
  explorarTerritorio() {
    throw new Error("O método explorarTerritorio() deve ser implementado!");
  }
}

class ODM_Gear {
  constructor(modelo) {
    this.modelo = modelo;
    this.#gasRestante = 100;
  }

  #gasRestante;

  usarGas(quantidade) {
    if (quantidade > this.#gasRestante) {
      console.log(`Sem gás suficiente! Restam apenas ${this.#gasRestante} unidades.`);
      this.#gasRestante = 0;
    } else {
      this.#gasRestante -= quantidade;
      console.log(`Usando ${quantidade} de gás. Restante: ${this.#gasRestante}`);
    }
  }

  getGas() {
    return this.#gasRestante;
  }
}

class Soldado extends IExplorador {
  constructor(nome, modeloGear) {
    super();
    this.nome = nome;
    this.gear = new ODM_Gear(modeloGear);
  }

  explorarTerritorio() {
    this.gear.usarGas(20);
    return `${this.nome} está explorando o território com o gear ${this.gear.modelo}`;
  }

  verificarEquipamento() {
    return `${this.nome} tem ${this.gear.getGas()} de gás restante.`;
  }
}

class Esquadrao extends IExplorador {
  constructor(lider, membrosIniciais = []) {
    super();
    this.lider = lider;
    this.membros = membrosIniciais;
  }

  adicionarMembro(soldado) {
    if (!(soldado instanceof Soldado)) {
      throw new Error("Apenas instâncias de Soldado podem ser adicionadas.");
    }
    this.membros.push(soldado);
  }

  explorarTerritorio() {
    console.log(`O esquadrão liderado por ${this.lider.nome} está em exploração!`);
    this.membros.forEach(m => console.log(m.explorarTerritorio()));
    return "Exploração concluída!";
  }

  relatarStatus() {
    return this.membros.map(m => m.verificarEquipamento());
  }
}

const levi = new Soldado("Levi", "Modelo 1");
const carlos = new Soldado("João Carlos", "Modelo 2");
const maria = new Soldado("Maria Joaquina", "Modelo 3");

const esquadrao = new Esquadrao(levi, [carlos, maria]);

console.log("\n=== MISSÃO DE EXPLORAÇÃO ===");
esquadrao.explorarTerritorio();

console.log("\n=== STATUS DOS SOLDADOS ===");
console.log(esquadrao.relatarStatus());
