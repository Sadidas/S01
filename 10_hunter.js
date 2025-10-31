class IRastreavel {
  rastrearLocal(lat, long) {
    throw new Error("O método rastrearLocal() deve ser implementado!");
  }
}

class Hunter {
  constructor(nome, localizacao, idade) {
    this.nome = nome;
    this.idade = idade;
    this.localizacao = localizacao;
  }
}

class Especialista extends Hunter {
  constructor(nome, localizacao, idade, habilidadeNen) {
    super(nome, localizacao, idade);
    this.habilidadeNen = habilidadeNen;
  }

  rastrearLocal(lat, long) {
    this.localizacao = `${lat}, ${long}`;
    return `${this.nome} (Especialista em ${this.habilidadeNen}) rastreou localização: ${this.localizacao}`;
  }
}

class Manipulador extends Hunter {
  constructor(nome, localizacao, idade, alvoAtual) {
    super(nome, localizacao, idade);
    this.alvoAtual = alvoAtual;
  }

  rastrearLocal(lat, long) {
    this.localizacao = `${lat}, ${long}`;
    return `${this.nome} (Manipulador) rastreou seu alvo ${this.alvoAtual.nome} em: ${this.localizacao}`;
  }
}

class Batalhao {
  constructor() {
    this.hunters = new Set();
  }

  adicionarHunter(hunter) {
    for (const h of this.hunters) {
      if (h.nome === hunter.nome) {
        console.log(`Hunter ${hunter.nome} já está registrado no Batalhão!`);
        return;
      }
    }
    this.hunters.add(hunter);
    console.log(`Hunter ${hunter.nome} adicionado ao Batalhão.`);
  }

  contarHunters() {
    return this.hunters.size;
  }

  iniciarRastreamento(lat, long) {
    const relatorios = [];
    console.log("\n=== Rastreamento em andamento ===");
    for (const hunter of this.hunters) {
      if (typeof hunter.rastrearLocal === "function") {
        relatorios.push(hunter.rastrearLocal(lat, long));
      }
    }
    return relatorios;
  }
}

const gon = new Especialista("Gon Freecss", "Desconhecido", 14, "Jajanken");
const killua = new Especialista("Killua Zoldyck", "Heavens Arena", 14, "Velocidade elétrica");
const hisoka = new Manipulador("Hisoka Morow", "Yorknew City", 28, gon);

const batalhao = new Batalhao();
batalhao.adicionarHunter(gon);
batalhao.adicionarHunter(killua);
batalhao.adicionarHunter(hisoka);
batalhao.adicionarHunter(gon);

console.log(`\nTotal de Hunters no Batalhão: ${batalhao.contarHunters()}`);

console.log("\n=== Resultados dos Rastreamentos ===");
batalhao.iniciarRastreamento("35.6°N", "139.7°E").forEach(r => console.log(r));
