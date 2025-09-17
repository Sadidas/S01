#include <iostream>
using namespace std;

int main() {
    int quantidade;
    cout << "Quantas notas deseja inserir? ";
    cin >> quantidade;

    double soma = 0.0;

    for (int i = 0; i < quantidade; i++) {
        double nota;
        while (true) {
            cout << "Digite a nota " << (i + 1) << " (0 a 10): ";
            cin >> nota;
            if (nota >= 0.0 && nota <= 10.0) {
                break;
            }
            cout << "Nota invalida! Tente novamente" << endl;
        }
        soma += nota;
    }

    double media = soma / quantidade;

    cout << endl << "Media final: " << media << endl;
    if (media >= 7.0) {
        cout << "Aprovado" << endl;
    } else {
        cout << "Reprovado" << endl;
    }

    return 0;
}
