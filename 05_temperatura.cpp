#include <iostream>

using namespace std;

double celsiusParaFahrenheit(double celsius);
double celsiusParaKelvin(double celsius);

int main() {
    int opcao;
    do {
        cout << endl << "=== Conversor de Temperatura ===" << endl;
        cout << "1. Converter Celsius para Fahrenheit" << endl;
        cout << "2. Converter Celsius para Kelvin" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao) {
            case 1: {
                double c;
                cout << "Digite a temperatura em Celsius: ";
                cin >> c;
                cout << "Em Fahrenheit: " << celsiusParaFahrenheit(c) << " F" << endl;
                break;
            }
            case 2: {
                double c;
                cout << "Digite a temperatura em Celsius: ";
                cin >> c;
                cout << "Em Kelvin: " << celsiusParaKelvin(c) << " K" << endl;
                break;
            }
            case 3:
                cout << "Encerrando o programa..." << endl;
                break;
            default:
                cout << "Opcao invalida! Tente novamente." << endl;
        }
    } while (opcao != 3);

    return 0;
}

double celsiusParaFahrenheit(double celsius){
    return (celsius * 9.0 / 5.0) + 32.0;
}

double celsiusParaKelvin(double celsius){
    return celsius + 273.15;
}
