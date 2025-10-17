class ArmaCorpoACorpo:
    def __init__(self, nome):
        self.nome = nome

    def __str__(self):
        return f"Arma corpo a corpo: {self.nome}"


class PhantomThieves:
    def __init__(self, nome, arma):
        self.nome = nome
        self.arma = arma

    def __str__(self):
        return f"{self.nome} com a arma {self.arma}"


class Joker:
    def __init__(self, nome, equipe):
        self.nome = nome
        self.arma = ArmaCorpoACorpo("Faca")
        self.equipe = equipe

    def mostrar_equipe(self):
        print(f"Joker ({self.arma}) lidera os Phantom Thieves:")
        for membro in self.equipe:
            print(f" - {membro}")


if __name__ == "__main__":
    membro1 = PhantomThieves("Panther", "Chicote")
    membro2 = PhantomThieves("Skull", "Taco de beisebol")
    membro3 = PhantomThieves("Queen", "Punhos de ferro")

    equipe = [membro1, membro2, membro3]

    joker = Joker("Joker", equipe)
    joker.mostrar_equipe()
