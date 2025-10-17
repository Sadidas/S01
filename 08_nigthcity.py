from abc import ABC, abstractmethod

class Cibernetico(ABC):
    @abstractmethod
    def realizar_hack(self):
        pass

class Implante:
    def __init__(self, custo, funcao):
        self.custo = custo
        self.funcao = funcao

    def __str__(self):
        return f"Implante ({self.funcao}, custo: {self.custo} créditos)"


class NetRunner(Cibernetico):
    def __init__(self, nome, custo_implante, funcao_implante):
        self.nome = nome
        self.implante = Implante(custo_implante, funcao_implante)

    def realizar_hack(self):
        print(f"{self.nome} está realizando um hack usando {self.implante.funcao}!")


class Faccao:
    def __init__(self, nome, membros):
        self.nome = nome
        self.membros = membros

    def mandar_hackear(self):
        print(f"\nFacção {self.nome} inicia operação de hack!")
        for membro in self.membros:
            membro.realizar_hack()


if __name__ == "__main__":
    n1 = NetRunner("V", 5000, "Cyberdeck Sandevistan")
    n2 = NetRunner("Lucy", 7000, "Quickhack Neural Link")
    n3 = NetRunner("T-Bug", 6000, "Sistema de invasão remoto")

    faccao = Faccao("Afterlife", [n1, n2, n3])
    faccao.mandar_hackear()
