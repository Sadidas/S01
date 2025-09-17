#include <iostream>

using namespace std;

int somarArray(int arr[], int tamanho);

int main(){
	
	const int tam = 5;
    int numeros[tam];

    cout << "Digite " << tam << " numeros inteiros:";
    for (int i = 0; i < tam; i++) {
        cin >> numeros[i];
    }
    
    cout << "Array somado = " << somarArray(numeros, tam);
	
	return 0;
}

int somarArray(int arr[], int tamanho){
	
	int total = 0;
	
	for(int i = 0; i < tamanho; i++){
		total += arr[i];
	}
	
	return total;
}